# @affinidi-tdk/auth-provider

Affinidi TDK Internal module for managing access tokens.

## Install

### Javascript

```bash
npm install @affinidi-tdk/auth-provider
```

## Python

### Install Python package

run inside [python virtual env](https://docs.python.org/3/library/venv.html)

```bash
pip install affinidi_tdk_auth_provider
```

## Java

### Install Java package

update dependencies (for eg: v1.29.0)

```java
<dependency>
    <groupId>com.affinidi.tdk</groupId>
    <artifactId>auth-provider</artifactId>
    <version>1.29.0</version>
    <scope>system</scope>
    <systemPath>${pom.basedir}/libs/auth-provider/1.29.0/auth-provider-1.29.0.jar</systemPath>
</dependency>
```

## Usage

### Python package usage

```python
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
}

authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()
```

### Javascript package usage

```ts
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
})

const projectScopedToken = await authProvider.fetchProjectScopedToken()
```

### Java package usage

```java
import com.affinidi.tdk.authprovider.*;

    private static AuthProvider getAuthProvider() {
        Map<String, String> params = new HashMap<>();
        params.put("projectId", dotenv.get("PROJECT_ID"));
        params.put("tokenId", dotenv.get("TOKEN_ID"));
        params.put("keyId", dotenv.get("KEY_ID"));
        params.put("privateKey", dotenv.get("PRIVATE_KEY").replace("\\n", System.getProperty("line.separator")));
        params.put("passphrase", dotenv.get("PASSPHRASE"));

        // Create an instance of AuthProvider
        AuthProvider authProvider = new AuthProvider(params);
        return authProvider;
    }

  AuthProvider authProvider = getAuthProvider();

  String projectScopedToken = authProvider.fetchProjectScopedToken();
```

### Manually Build JSII python package

This is step is required, as python package is not published to pypi.org yet

```bash
git clone git@github.com:affinidi/affinidi-tdk.git
cd packages/auth-provider/
npm i --prefix .
npm run build
npm run package
```

```bash
pip install dist/python/affinidi_tdk_auth_provider-0.1.4-py3-none-any.whl
```

### Manually Build JSII java package

This is step is required, as python package is not published to pypi.org yet

```bash
git clone git@github.com:affinidi/affinidi-tdk.git
cd packages/auth-provider/
npm i --prefix .
npm run build
npm run package
```

update dependencies (for eg: v1.29.0)

```java
<dependency>
    <groupId>com.affinidi.tdk</groupId>
    <artifactId>auth-provider</artifactId>
    <version>1.29.0</version>
    <scope>system</scope>
    <systemPath>${pom.basedir}/libs/auth-provider/1.29.0/auth-provider-1.29.0.jar</systemPath>
</dependency>
```
