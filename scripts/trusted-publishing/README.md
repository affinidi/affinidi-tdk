# npm Trusted Publishing automation

This repo publishes all `@affinidi-tdk/*` npm packages from CI using **npm
trusted publishing (OIDC)** — no long-lived `NPM_TOKEN`. Publishes use
short-lived, workflow-scoped credentials and get automatic provenance.

Publishing is **decoupled**: `semantic-release` only creates the version git
tag, and dedicated **tag-triggered jobs** in `nx-release.yaml` run the actual
OIDC publish (`publish-npm` for plain-TS clients + the jsii `common` package,
`publish-jsii` for the publib packages `iota-core` / `auth-provider`).

`scripts/trusted-publishing/tp.ts` discovers every npm package and keeps them
configured for this flow. Because it is discovery-driven, **new packages are
handled automatically** — add your package with a `semantic-release` target,
add its path to the matching publish job guard, and run the commands below.

## Commands

```bash
npm run tp:list        # show all discovered npm packages + classification
npm run tp:check       # CI guard: fail if any package isn't tag-only + covered by a publish job
npm run tp:normalize   # rewrite packages to the decoupled tag-only publish config
npm run tp:trust       # register each package as a Trusted Publisher on npmjs.com
```

Useful flags: `--only <pkg>` (repeatable), `--dry-run`, `--json`, and
`--stage` (trust: grant stage-only publish instead of direct publish).
Config is overridable via env: `TP_REPO`, `TP_WORKFLOW`, `TP_ENVIRONMENT`,
`TP_REGISTRY`, `TP_PERMISSION`, `TP_NPM` (path to the npm binary used by `trust`).
`tp:trust` requires **npm >= 12** (permission flags); the other commands work on any npm.

## How it works

`@semantic-release/npm`'s OIDC pre-check rejects our scoped packages before the
npm CLI ever runs, so instead of publishing inline we split releasing in two:

- **Tagging (release job).** On push to `main`, `semantic-release` runs with
  `npmPublish: false` (plain-TS + `common`) or with no exec `publishCmd`
  (`iota-core` / `auth-provider`), so it only creates and pushes the version
  tag `@affinidi-tdk/<name>-v<version>`.
- **Publishing (tag-triggered jobs).** Pushing that tag triggers:
  - `publish-npm` — builds and `npm publish`es the plain-TS clients + the jsii
    `common` package via the npm CLI's **native OIDC** exchange.
  - `publish-jsii` — builds with `jsii-pacmak` and publishes `iota-core` /
    `auth-provider` to **npm** (`publib`, `NPM_TRUSTED_PUBLISHER=true`) and
    **PyPI** (twine + a short-lived minted token).
- Both publish jobs run in the same workflow file and `environment: main`, so
  the npm/PyPI trusted-publisher claims match with no extra configuration.
- The workflow runs on Node 24 (npm >= 11.5.1, required for OIDC) with
  `id-token: write` and passes no `NPM_TOKEN`/`NODE_AUTH_TOKEN`.
- `tp:check` runs on every PR (`nx-branch.yaml`) and fails if a package is not
  tag-only or isn't covered by a publish job guard.

## One-time registration (per package, on npmjs.com)

`npm trust` writes the trusted-publisher config on npmjs.com. It must be run by
an npm **org owner**, requires **2FA**, and needs **npm >= 12** (the CLI added
the `--allow-publish`/`--allow-stage-publish` permission flags in 12.0.0; older
npm silently omits them and the registry rejects the request). Run once
(idempotent):

```bash
npm i -g npm@latest       # ensure your npm is >= 12 (check with: npm -v)
npm login                 # as an @affinidi-tdk owner
npm run tp:trust          # registers every package with `publish` permission
# preview first if you like:
npm run tp:trust -- --dry-run
npm logout                # IMPORTANT: revoke the login token afterwards
```

Each package is registered with:
`repository=affinidi/affinidi-tdk`, `file=nx-release.yaml`, `environment=main`,
`permission=publish` (CI may `npm publish` directly, matching our auto-release
from `main`).

**About 2FA:** `npm trust` is a write operation, so npm requires two-factor
authentication. The script runs npm with an inherited terminal, so just complete
npm's prompt when it appears (it prints a `https://www.npmjs.com/auth/...` URL —
open it, approve, and it continues). You'll be prompted per package. To script a
single package non-interactively, pass a fresh code:
`npm run tp:trust -- --only @affinidi-tdk/<name> --otp 123456` (OTP codes expire
in ~30s, so `--otp` is only practical with `--only`). Any packages that fail
(e.g. a cancelled/expired OTP) are listed at the end with a ready-to-run
re-invocation; already-configured packages are skipped, so re-running is safe.

> **Which npm is used?** `@semantic-release/npm` vendors an older `npm` under
> `node_modules/.bin`, which `npm run` puts first on `PATH`. The script
> deliberately ignores that copy and invokes the npm that launched `npm run`
> (via `npm_execpath`), i.e. **your global npm** — so you only need *your* npm to
> be >= 12, not the vendored one. It prints which npm it resolved
> (`Using npm <version> (<path>)`). If it still picks the wrong one, force it:
> `TP_NPM=$(command -v npm) npm run tp:trust`.

**Stage-only (max security, optional):** run `npm run tp:trust -- --stage` to
grant `stage publish` instead. CI then only *stages* a release and a maintainer
must promote it with 2FA (via the CLI or npmjs.com) before it goes public. This
changes the release flow (publishes no longer happen automatically on merge), so
only use it if you want mandatory human approval per release.

### Log out when you're done (important)

`npm login` writes a long-lived access token to your `~/.npmrc`
(`//registry.npmjs.org/:_authToken=…`). Registration is a **one-time** action,
so once `tp:trust` succeeds you should immediately remove that credential —
leaving it lying around re-introduces exactly the kind of standing token that
trusted publishing exists to eliminate.

```bash
npm logout                                  # invalidates the token server-side and clears ~/.npmrc
npm whoami                                  # should now error: "This command requires you to be logged in"
```

Notes:
- `npm logout` both **revokes the token on npmjs.com** and removes it from your
  `~/.npmrc`, so a leaked copy of the file is useless afterwards.
- If you authenticated against a non-default registry, log out of that same one:
  `npm logout --registry https://registry.npmjs.org`.
- If `~/.npmrc` still contains an `_authToken` line after logout (e.g. it was
  set manually), delete that line by hand.
- CI never logs in or out — it publishes via short-lived OIDC tokens, so this
  applies only to the human running the one-time registration.

## Block token publishing (required hardening)

**Configuring a trusted publisher does *not* disable tokens on its own** — npm
accepts OIDC publishes *in addition to* token-based publishes. To make OIDC the
*only* way to publish (so a leaked/legacy `NPM_TOKEN` can't push a release), you
must, per package, on npmjs.com:

1. Package → **Settings** → **Publishing access**
2. Select **"Require two-factor authentication and disallow tokens"**
3. **Update Package Settings**

This is a **web-UI-only** setting — npm exposes no CLI or registry API for it
(`npm access` can only set `status`/`mfa`, and `mfa=automation` actually *lets*
automation tokens bypass 2FA). Trusted publishers keep working after this,
because they authenticate with OIDC, not tokens. Do this only **after** you've
verified an OIDC publish succeeds, then revoke the old `NPM_TOKEN`.

## Recommended rollout

1. Merge this PR (workflow + tag-only config).
2. Run `npm run tp:trust` as an org owner (npm >= 12) to register all packages,
   then `npm logout` to revoke the login token.
3. Trigger a release and confirm packages publish via OIDC (provenance badge appears).
4. Harden per package on npmjs.com: **"Require two-factor authentication and
   disallow tokens"** (see above), then revoke the old `NPM_TOKEN` automation token.

## Adding a new package later

1. Add the package with a `semantic-release` target (plain-TS: use the
   `@semantic-release/npm` plugin; jsii: use publib `publish-npm`).
2. `npm run tp:normalize` to make it tag-only, and add its path to the matching
   publish job guard in `nx-release.yaml` (`publish-npm`, or `publish-jsii` for
   publib packages). Commit both.
3. `npm run tp:trust -- --only @affinidi-tdk/<name>` as an org owner, then
   `npm logout`.
4. On npmjs.com, set the new package to **"Require 2FA and disallow tokens"**.

CI (`tp:check`) will fail the PR until the package is tag-only and covered by a
publish job.
