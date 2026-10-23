## @affinidi-tdk/common

## Install

### Prerequisites

Ensure you have the following installed:

- **Node.js 22 (22.23.4 or later), 24 (24.22.1 or later), or 26.12.1 and later**
  > 💡 Earlier releases lack the October 2026 security fix and are rejected by `engines`. The LTS (Long Term Support) version is recommended for better stability and performance.
  > For details on current LTS version check [Node.js releases page](https://nodejs.org/en/about/previous-releases).
- **npm v11.6.0+** (Node.js package manager)

### Javascript

```bash
npm install @affinidi-tdk/common
```

## Python

run inside [python virtual env](https://docs.python.org/3/library/venv.html)

```bash
pip install affinidi_tdk_common
```

## Manually build package

```bash
npm i --prefix .
npm run build
npm run package
```

The code will be generated under /dist for each language.
