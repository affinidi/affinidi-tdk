## @affinidi/issuance

### Build JSII

```
npm i --prefix .
npm run build
npm run package
```

The code will be generated under /dist for each language.

### Usage

### JS

```bash
npm install <path_to_issuance.jsii.tgz>
```

```ts
import { Issuance } from '@affinidi/issuance'

const config = { authProvider, apiGatewayUrl }

const issuance = new Issuance(config)

const unsignedVC = await issuance.buildUnsignedVC({
  credentialSubject: {
    value1: '<value-1>',
    value2: '<value-2>', // these will be based on the schema
  },
  holderDid: '<holder-did>',
  expiresAt: 'XXXX-XX-XX',
  typeName: '<schema-type>',
  jsonLdContextUrl: '<schema-jsonLdContextUrl>',
  jsonSchemaUrl: '<schema-jsonSchemaUrl>',
})
const issuedVc = await issuance.issueVC(unsignedVC, walletId)
```

You can refer [here](../../docs/examples/typescript/auth_provider.ts) to see how to generate authProvider

You can refer [here](../../docs/examples/typescript/client-cwe.ts) to see how to get walletId

### Python

```bash
pip install <path_to_affinidi-tdk-issuance.whl>
```

```python
import affinidi_tdk.issuance

config = {
   'apiGatewayUrl': '<api_gateway_url>',
   'authProvider' : '<auth_provider_package>'
}

issuance = affinidi_tdk.issuance.Issuance(config)

unsigned_vc_config = {
    'credentialSubject': {
        'value1': '<value-1>',
        'value2': '<value-2>', # these will be based on the schema
    },
    'holderDid': '<holder-did>',
    'expiresAt': 'XXXX-XX-XX',
    'typeName': '<schema-type>',
    'jsonLdContextUrl': '<schema-jsonLdContextUrl>',
    'jsonSchemaUrl': '<schema-jsonSchemaUrl>',
}

unsigned_vc = issuance.build_unsigned_vc(unsigned_vc_config)

signed_vc = issuance.issue_vc(unsigned_vc, walletId)
```

You can refer [here](../../docs/examples/python/auth_provider.py) to see how to generate authProvider

You can refer [here](../../docs/examples/python/client-cwe.py) to see how to get walletId
