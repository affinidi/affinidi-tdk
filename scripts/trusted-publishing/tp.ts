#!/usr/bin/env ts-node
/**
 * Trusted-publishing automation for all npm packages in this monorepo.
 *
 * Discovers every npm package in the monorepo and keeps it wired for the
 * decoupled trusted-publishing flow: semantic-release only creates git tags,
 * and tag-triggered jobs run the actual OIDC publish. Also registers each
 * package as an npm Trusted Publisher (npmjs.com) so both existing and NEW
 * packages are handled automatically without hand-editing each project.
 *
 * Subcommands:
 *   list        Show discovered npm packages + classification.
 *   check       CI guard: fail if any npm package is not tag-only + covered by a
 *               tag-triggered publish job, or if a token is still wired into the
 *               workflow.
 *   normalize   Rewrite packages to the decoupled tag-only flow (idempotent):
 *               @semantic-release/npm packages get npmPublish:false; jsii/publib
 *               packages get their exec publishCmd removed.
 *   trust       Register each package as a GitHub Actions Trusted Publisher on
 *               npmjs.com via `npm trust github` (idempotent). Grants the
 *               `publish` permission by default (use --stage for stage-only).
 *               Requires an authenticated npm session with owner rights and
 *               npm >= 12 (run once).
 *
 * Flags:
 *   --only <pkg>     Restrict to a single package name (repeatable).
 *   --dry-run        Show what would change / run, without doing it.
 *   --json           Machine-readable output (list/check).
 *   --stage          trust: grant stage-only publish (maintainer promotes with 2FA).
 *   --otp <code>     trust: pass a 2FA one-time password to npm (best with --only;
 *                    otherwise complete npm's interactive/web 2FA when prompted).
 *
 * Config (overridable via env):
 *   TP_REPO         default: affinidi/affinidi-tdk
 *   TP_WORKFLOW     default: nx-release.yaml   (basename inside .github/workflows)
 *   TP_ENVIRONMENT  default: main
 *   TP_REGISTRY     default: https://registry.npmjs.org
 *   TP_PERMISSION   default: allow-publish  (or allow-stage-publish)
 *
 * The `trust` subcommand requires npm CLI >= 12.0.0 (permission flags).
 */

import {
  readFileSync,
  writeFileSync,
  readdirSync,
  statSync,
  existsSync,
} from 'node:fs';
import { join, dirname, relative } from 'node:path';
import { spawnSync } from 'node:child_process';

type SrPlugin = string | [string, Record<string, unknown>];

interface Project {
  targets?: Record<string, { options?: { plugins?: SrPlugin[]; npm?: unknown } }>;
}

type Method = 'semantic-release-npm' | 'publib';

interface NpmPackage {
  name: string;
  dir: string;
  projectPath: string;
  pkgPath: string;
  isJsii: boolean;
  method: Method;
  npmPublishDisabled: boolean;
  npmOption: unknown;
  usesNpmPlugin: boolean;
  execPublishCmd: string | null;
  project: Project;
}

interface Flags {
  only: string[];
  dryRun: boolean;
  json: boolean;
  stage: boolean;
  otp?: string;
}

const REPO_ROOT = join(__dirname, '..', '..');
// Permission granted to the trusted publisher (npm >= 12):
//   allow-publish       -> CI may `npm publish` directly (matches our auto-release from main)
//   allow-stage-publish -> CI may only stage; a maintainer promotes with 2FA (max security)
type Permission = 'allow-publish' | 'allow-stage-publish';
const CFG = {
  repo: process.env.TP_REPO || 'affinidi/affinidi-tdk',
  workflow: process.env.TP_WORKFLOW || 'nx-release.yaml',
  environment: process.env.TP_ENVIRONMENT || 'main',
  registry: process.env.TP_REGISTRY || 'https://registry.npmjs.org',
  permission: (process.env.TP_PERMISSION as Permission) || 'allow-publish',
};
// npm added the trust permission flags in 12.0.0; older CLIs silently omit them
// and the registry rejects the request.
const MIN_NPM_FOR_TRUST = '12.0.0';
const WORKFLOW_PATH = join(REPO_ROOT, '.github', 'workflows', CFG.workflow);
const SKIP_DIRS = new Set(['node_modules', 'dist', '.git', '.nx', 'coverage', 'tmp']);

function fail(msg: string): never {
  console.error(`\u001b[31merror:\u001b[0m ${msg}`);
  process.exit(1);
}

function readJson<T = any>(p: string): T {
  return JSON.parse(readFileSync(p, 'utf8')) as T;
}

function pluginId(pl: SrPlugin): string {
  return Array.isArray(pl) ? pl[0] : pl;
}

/** Recursively find every project.json under the repo (skipping build/vendor dirs). */
function findProjectFiles(dir: string, out: string[] = []): string[] {
  for (const entry of readdirSync(dir)) {
    if (SKIP_DIRS.has(entry)) continue;
    const full = join(dir, entry);
    let isDir: boolean;
    try {
      isDir = statSync(full).isDirectory();
    } catch {
      continue;
    }
    if (isDir) findProjectFiles(full, out);
    else if (entry === 'project.json') out.push(full);
  }
  return out;
}

/**
 * Classify a project as an npm package (or not).
 * npm packages have a sibling package.json AND are published to npm via
 * @semantic-release/npm (plain-TS clients + jsii `common`) or a publib
 * `publish-npm` script (jsii iota-core / auth-provider). Publishing itself is
 * decoupled to tag-triggered jobs; semantic-release only creates the tag.
 */
function classify(projectPath: string): NpmPackage | null {
  let project: Project;
  try {
    project = readJson<Project>(projectPath);
  } catch {
    return null;
  }
  const sr = project.targets?.['semantic-release'];
  if (!sr) return null; // not published at all

  const dir = dirname(projectPath);
  const pkgPath = join(dir, 'package.json');
  if (!existsSync(pkgPath)) return null; // python/java projects have no package.json

  let pkg: any;
  try {
    pkg = readJson(pkgPath);
  } catch {
    return null;
  }
  if (!pkg.name) return null;

  const opts = sr.options || {};
  const plugins: SrPlugin[] = opts.plugins || [];
  let usesNpmPlugin = false;
  let npmPublishDisabled = false;
  let execPublishCmd: string | null = null;
  for (const pl of plugins) {
    const id = pluginId(pl);
    if (id === '@semantic-release/npm') {
      usesNpmPlugin = true;
      if (Array.isArray(pl) && (pl[1] as any)?.npmPublish === false) npmPublishDisabled = true;
    }
    if (Array.isArray(pl) && pl[0] === '@semantic-release/exec') {
      execPublishCmd = ((pl[1] as any)?.publishCmd as string) || null;
    }
  }
  const isJsii = 'jsii' in pkg || /jsii/.test(pkg.scripts?.build || '');
  // Publishing is decoupled: semantic-release only tags, and a tag-triggered job
  // runs the actual npm publish. A project counts as an npm package if it wires
  // @semantic-release/npm (plain-TS clients + the jsii `common` package) or is a
  // jsii package that ships a publib `publish-npm` script (iota-core, auth-provider).
  const hasPublibNpm = isJsii && !!pkg.scripts?.['publish-npm'];
  const publishesNpm = usesNpmPlugin || hasPublibNpm;
  if (!publishesNpm) return null; // pypi / maven only

  const method: Method = usesNpmPlugin ? 'semantic-release-npm' : 'publib';

  return {
    name: pkg.name,
    dir: relative(REPO_ROOT, dir),
    projectPath,
    pkgPath,
    isJsii,
    method,
    npmPublishDisabled,
    npmOption: opts.npm,
    usesNpmPlugin,
    execPublishCmd,
    project,
  };
}

function discover(): NpmPackage[] {
  const pkgs: NpmPackage[] = [];
  for (const pf of findProjectFiles(REPO_ROOT)) {
    const c = classify(pf);
    if (c) pkgs.push(c);
  }
  pkgs.sort((a, b) => a.name.localeCompare(b.name));
  return pkgs;
}

function applyOnly(pkgs: NpmPackage[], only: string[]): NpmPackage[] {
  if (!only.length) return pkgs;
  const set = new Set(only);
  const filtered = pkgs.filter((p) => set.has(p.name));
  const missing = only.filter((n) => !filtered.some((p) => p.name === n));
  if (missing.length) fail(`--only package(s) not found: ${missing.join(', ')}`);
  return filtered;
}

/* ------------------------------- list ---------------------------------- */
function cmdList(pkgs: NpmPackage[], flags: Flags): void {
  if (flags.json) {
    console.log(JSON.stringify(pkgs.map(({ project, ...rest }) => rest), null, 2));
    return;
  }
  console.log(`Discovered ${pkgs.length} npm package(s) (tag-only; published by tag-triggered jobs):\n`);
  const w = Math.max(...pkgs.map((p) => p.name.length));
  for (const p of pkgs) {
    const kind = p.isJsii ? 'jsii  ' : 'ts    ';
    console.log(`  ${p.name.padEnd(w)}  ${kind}  via ${p.method.padEnd(20)}  ${p.dir}`);
  }
  console.log(
    `\nTrusted publisher target: repo=${CFG.repo} workflow=${CFG.workflow} env=${CFG.environment}`,
  );
}

/* ------------------------------- check --------------------------------- */
function workflowText(): string {
  if (!existsSync(WORKFLOW_PATH)) fail(`release workflow not found: ${WORKFLOW_PATH}`);
  return readFileSync(WORKFLOW_PATH, 'utf8');
}

/**
 * Extract the projectRoot globs that the tag-triggered publish jobs treat as
 * publishable, from guard lines like:
 *   libs/iota-browser|clients/typescript/*) echo "publish=true" >> "$GITHUB_OUTPUT" ;;
 * Returns one anchored RegExp per glob (shell `*` -> `.*`).
 */
function publishJobGlobs(wf: string): RegExp[] {
  const globs: RegExp[] = [];
  const re = /^[ \t]*([^\s)][^)\n]*)\)\s*echo\s+"publish=true"/gm;
  let m: RegExpExecArray | null;
  while ((m = re.exec(wf))) {
    for (const raw of m[1].split('|')) {
      const g = raw.trim();
      if (!g || g === '*') continue;
      const rx = '^' + g.replace(/[.+^${}()[\]\\]/g, '\\$&').replace(/\*/g, '.*') + '$';
      globs.push(new RegExp(rx));
    }
  }
  return globs;
}

function cmdCheck(pkgs: NpmPackage[], flags: Flags): void {
  const problems: string[] = [];
  const wf = workflowText();

  // --- Workflow-level guards (apply to every npm package). ---
  if (!/id-token:\s*write/.test(wf)) {
    problems.push(`[workflow] ${CFG.workflow} is missing "id-token: write" (required for OIDC).`);
  }
  if (
    /NODE_AUTH_TOKEN:\s*\$\{\{\s*secrets\.NPM_TOKEN/.test(wf) ||
    /^\s*NPM_TOKEN:\s*\$\{\{\s*secrets\.NPM_TOKEN/m.test(wf)
  ) {
    problems.push(
      `[workflow] ${CFG.workflow} still wires NPM_TOKEN/NODE_AUTH_TOKEN into a release step; remove it to use trusted publishing.`,
    );
  }
  const hasPublib = pkgs.some((p) => p.method === 'publib');
  if (hasPublib && !/NPM_TRUSTED_PUBLISHER/.test(wf)) {
    problems.push(
      `[workflow] jsii packages use publib but ${CFG.workflow} does not set NPM_TRUSTED_PUBLISHER=true.`,
    );
  }

  // Publishing is decoupled: semantic-release only tags, and tag-triggered jobs
  // perform the publish. Verify those jobs (and the tag trigger) exist.
  if (!/^\s*tags:/m.test(wf)) {
    problems.push(`[workflow] ${CFG.workflow} has no tag trigger; the tag-triggered publish jobs will never run.`);
  }
  if (!/^\s{2}publish-npm:/m.test(wf)) {
    problems.push(`[workflow] ${CFG.workflow} is missing the tag-triggered "publish-npm" job.`);
  }
  if (hasPublib && !/^\s{2}publish-jsii:/m.test(wf)) {
    problems.push(
      `[workflow] ${CFG.workflow} is missing the tag-triggered "publish-jsii" job (required for publib packages).`,
    );
  }

  const coverage = publishJobGlobs(wf);

  // --- Per-package config guards (decoupled / tag-only model). ---
  for (const p of pkgs) {
    if (p.method === 'semantic-release-npm') {
      if (!p.usesNpmPlugin) {
        problems.push(`[${p.name}] missing an explicit @semantic-release/npm plugin.`);
      } else if (!p.npmPublishDisabled) {
        problems.push(
          `[${p.name}] @semantic-release/npm must set npmPublish:false - publishing is decoupled to the tag-triggered publish-npm job.`,
        );
      }
    }
    if (p.method === 'publib' && p.execPublishCmd && /publish-npm/.test(p.execPublishCmd)) {
      problems.push(
        `[${p.name}] publishes npm inline via an exec publishCmd; it should be tag-only (publib runs in the publish-jsii job).`,
      );
    }
    // Every tag-only package must be covered by a publish job, or its tag is a no-op.
    if (coverage.length && !coverage.some((rx) => rx.test(p.dir))) {
      problems.push(
        `[${p.name}] path "${p.dir}" is not matched by any publish job guard in ${CFG.workflow}; its tag would never publish.`,
      );
    }
  }

  if (flags.json) {
    console.log(JSON.stringify({ ok: problems.length === 0, problems }, null, 2));
  } else if (problems.length) {
    console.error(`\u001b[31mTrusted-publishing check failed (${problems.length}):\u001b[0m`);
    for (const pr of problems) console.error(`  - ${pr}`);
  } else {
    console.log(`\u001b[32mOK\u001b[0m - all ${pkgs.length} npm package(s) are tag-only and covered by a publish job.`);
  }
  if (problems.length) process.exit(1);
}

/* ----------------------------- normalize ------------------------------- */
function cmdNormalize(pkgs: NpmPackage[], flags: Flags): void {
  let changed = 0;
  for (const p of pkgs) {
    const sr = p.project.targets!['semantic-release'];
    const opts = (sr.options = sr.options || {});
    const plugins: SrPlugin[] = Array.isArray(opts.plugins) ? opts.plugins : [];
    let mutated = false;

    if (p.method === 'publib') {
      // jsii/publib packages are tag-only: strip any exec publishCmd so the
      // release run only creates the tag (publib runs later in the publish-jsii job).
      for (const pl of plugins) {
        if (
          Array.isArray(pl) &&
          pl[0] === '@semantic-release/exec' &&
          (pl[1] as any)?.publishCmd != null
        ) {
          delete (pl[1] as any).publishCmd;
          mutated = true;
        }
      }
    } else {
      // plain-TS clients + the jsii `common` package: ensure an explicit
      // @semantic-release/npm plugin with npmPublish:false (tag-only; the actual
      // publish happens in the tag-triggered publish-npm job).
      const npmIdx = plugins.findIndex((pl) => pluginId(pl) === '@semantic-release/npm');
      if (npmIdx === -1) {
        plugins.push(['@semantic-release/npm', { npmPublish: false }]);
        mutated = true;
      } else {
        const entry = plugins[npmIdx];
        if (Array.isArray(entry)) {
          if ((entry[1] as any)?.npmPublish !== false) {
            (entry[1] as any).npmPublish = false;
            mutated = true;
          }
        } else {
          plugins[npmIdx] = ['@semantic-release/npm', { npmPublish: false }];
          mutated = true;
        }
      }
    }
    opts.plugins = plugins;

    if (mutated) {
      changed++;
      if (flags.dryRun) {
        console.log(`would normalize ${p.name} (${p.projectPath})`);
      } else {
        writeFileSync(p.projectPath, JSON.stringify(p.project, null, 2) + '\n');
        console.log(`normalized ${p.name}`);
      }
    }
  }
  console.log(
    changed === 0
      ? 'Nothing to normalize - all packages already tag-only.'
      : `${flags.dryRun ? 'Would normalize' : 'Normalized'} ${changed} package(s).`,
  );
}

/* ------------------------------- trust --------------------------------- */
/**
 * Resolve which npm to invoke. Running under `npm run` prepends
 * `node_modules/.bin` to PATH, and `@semantic-release/npm` vendors its own
 * (older) `npm` there - so a bare `spawnSync('npm')` would hit that nested copy
 * instead of the user's real CLI. Prefer, in order:
 *   1. $TP_NPM                       (explicit override)
 *   2. $npm_execpath                 (the outer npm that launched `npm run`)
 *   3. `npm` from a PATH with node_modules/.bin stripped
 */
function resolveNpm(): { cmd: string; prefix: string[]; env: NodeJS.ProcessEnv } {
  const env = { ...process.env };
  // Strip any node_modules/.bin entries so a fallback PATH lookup can't hit the
  // vendored npm.
  if (env.PATH) {
    env.PATH = env.PATH.split(':')
      .filter((p) => !/[\\/]node_modules[\\/]\.bin$/.test(p))
      .join(':');
  }
  if (process.env.TP_NPM) return { cmd: process.env.TP_NPM, prefix: [], env };
  const execpath = process.env.npm_execpath;
  if (execpath && /\.[cm]?js$/.test(execpath)) {
    return { cmd: process.execPath, prefix: [execpath], env };
  }
  if (execpath) return { cmd: execpath, prefix: [], env };
  return { cmd: 'npm', prefix: [], env };
}

const NPM = resolveNpm();

function npm(args: string[], { capture = false }: { capture?: boolean } = {}) {
  return spawnSync(NPM.cmd, [...NPM.prefix, ...args], {
    encoding: 'utf8',
    env: NPM.env,
    stdio: capture ? ['ignore', 'pipe', 'pipe'] : 'inherit',
  });
}

/** Compare dotted versions: returns true if a >= b. */
function gte(a: string, b: string): boolean {
  const pa = a.split('.').map((n) => parseInt(n, 10) || 0);
  const pb = b.split('.').map((n) => parseInt(n, 10) || 0);
  for (let i = 0; i < Math.max(pa.length, pb.length); i++) {
    const x = pa[i] || 0;
    const y = pb[i] || 0;
    if (x !== y) return x > y;
  }
  return true;
}

function alreadyTrusted(name: string): boolean {
  const res = npm(['trust', 'list', name, '--json', '--registry', CFG.registry], { capture: true });
  if (res.status !== 0) return false;
  let data: any;
  try {
    data = JSON.parse(res.stdout || '[]');
  } catch {
    return false;
  }
  const list: unknown[] = Array.isArray(data)
    ? data
    : data?.trustedPublishers || data?.publishers || [];
  return list.some((t) => {
    const s = JSON.stringify(t).toLowerCase();
    return (
      s.includes(CFG.repo.toLowerCase()) &&
      s.includes(CFG.workflow.toLowerCase()) &&
      (!CFG.environment || s.includes(CFG.environment.toLowerCase()))
    );
  });
}

function cmdTrust(pkgs: NpmPackage[], flags: Flags): void {
  const which = NPM.prefix[0] || NPM.cmd;
  const verify = npm(['trust', '--help'], { capture: true });
  if (verify.status !== 0 && !/trust/.test(verify.stderr || '')) {
    fail(`this npm CLI has no \`npm trust\` command; upgrade to npm >= ${MIN_NPM_FOR_TRUST} (npm i -g npm@latest).`);
  }
  const npmVer = (npm(['-v'], { capture: true }).stdout || '').trim();
  if (npmVer && !gte(npmVer, MIN_NPM_FOR_TRUST)) {
    fail(
      `npm ${npmVer} (${which}) is too old to register trusted publishers - the permission flags ` +
        `(--allow-publish/--allow-stage-publish) require npm >= ${MIN_NPM_FOR_TRUST}.\n` +
        `  Upgrade your npm (npm i -g npm@latest), or point TP_NPM at an npm >= ${MIN_NPM_FOR_TRUST}:\n` +
        `    TP_NPM=$(command -v npm) npm run tp:trust`,
    );
  }
  console.log(`Using npm ${npmVer} (${which}).`);

  const permission: Permission = flags.stage ? 'allow-stage-publish' : CFG.permission;
  console.log(
    `Registering trusted publisher with permission: ${permission === 'allow-stage-publish' ? 'stage publish (maintainer promotes with 2FA)' : 'publish'}\n`,
  );

  let done = 0;
  let skipped = 0;
  const failed: string[] = [];
  for (const p of pkgs) {
    if (!flags.dryRun && alreadyTrusted(p.name)) {
      console.log(`= ${p.name} already has this trusted publisher, skipping`);
      skipped++;
      continue;
    }
    const args = [
      'trust',
      'github',
      p.name,
      '--file',
      CFG.workflow,
      '--repo',
      CFG.repo,
      '--environment',
      CFG.environment,
      `--${permission}`,
      '--registry',
      CFG.registry,
      '-y',
    ];
    if (flags.otp) args.push('--otp', flags.otp);
    if (flags.dryRun) args.push('--dry-run');
    console.log(`\n\u001b[36m$ npm ${args.join(' ')}\u001b[0m`);
    // Inherit stdio so npm's interactive 2FA (one-time password / web auth) works.
    const res = npm(args);
    if (res.status === 0) {
      done++;
    } else {
      failed.push(p.name);
      console.error(`\u001b[31m! failed to configure ${p.name}\u001b[0m`);
    }
  }
  console.log(
    `\nTrusted publishing: configured ${done}, skipped ${skipped}, failed ${failed.length}, total ${pkgs.length}.`,
  );
  if (failed.length) {
    console.error(
      `\nThe following package(s) were not configured:\n  ${failed.join('\n  ')}\n` +
        `Re-run for just those, e.g.:\n  npm run tp:trust -- ${failed.map((n) => `--only ${n}`).join(' ')}`,
    );
    process.exit(1);
  }
}

/* ------------------------------- main ---------------------------------- */
function parseArgs(argv: string[]): { cmd: string | undefined; flags: Flags } {
  const flags: Flags = { only: [], dryRun: false, json: false, stage: false };
  const rest: string[] = [];
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === '--only') flags.only.push(argv[++i]);
    else if (a === '--dry-run') flags.dryRun = true;
    else if (a === '--json') flags.json = true;
    else if (a === '--stage' || a === '--stage-only') flags.stage = true;
    else if (a === '--otp') flags.otp = argv[++i];
    else rest.push(a);
  }
  return { cmd: rest[0], flags };
}

function main(): void {
  const { cmd, flags } = parseArgs(process.argv.slice(2));
  const all = discover();
  const pkgs = applyOnly(all, flags.only);

  switch (cmd) {
    case 'list':
      return cmdList(pkgs, flags);
    case 'check':
      return cmdCheck(pkgs, flags);
    case 'normalize':
      return cmdNormalize(pkgs, flags);
    case 'trust':
      return cmdTrust(pkgs, flags);
    default:
      console.log(
        'usage: node -r @swc-node/register scripts/trusted-publishing/tp.ts <list|check|normalize|trust> [--only <pkg>] [--dry-run] [--json] [--stage]',
      );
      process.exit(cmd ? 1 : 0);
  }
}

main();
