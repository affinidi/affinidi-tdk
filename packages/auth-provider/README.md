## @affinidi/tdk-auth-provider

### Build JSII

```
npm i --prefix .
npm run build
npm run package
```

The code will be generated under /dist for each language.

### Usage

### JS

#### Create Personal Access Token

This is optional - if you don't have your personal access token yet, follow the steps below:

* login to Affinidi via CLI:

```bash
affinidi start
```

This will return you projectId, which is needed later.


```bash
affinidi whoami | jq '"\(.access_token) ~~~ \(.projectScopedToken)"'
```

NOTE: if you don't have `jq`

```bash
affinidi whoami
```

and save the values `access_token` and `projectScopedToken`.

```bash
npm install <path_to_tdk-auth-provider.jsii.tgz>
```

```ts
import { PersonalAccessToken } from '@affinidi/tdk-auth-provider'

const pat = new PersonalAccessToken({ passphrase, userAccessToken, projectScopedToken })
const { tokenId, keyId, publicKey, privateKey } = await pat.createPersonalAccessToken()
```

🤖 A new personal access token now can be used to access Affinidi services.


```ts
import { AuthProvider } from '@affinidi/tdk-auth-provider'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  machineUserId, // tokenId from above
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
})

const projectScopedToken = await authProvider.getProjectScopedToken()
```

### Python

```bash
pip install <path_to_affinidi-tdk-auth-provider.whl>
```

```python
import affinidi_tdk.auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  machineUserId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
}

authProvider = affinidi_tdk.auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()
```
