# Contributing to Affinidi TDK

When contributing to this repository, please first discuss the change you wish to make by creating a new [GitHub issue](https://github.com/affinidi/affinidi-tdk/issues/new).

Clients are generated intenally by Affinidi based on our API's. So, please don't update the client code and instead create an issue.

## Contributing to libraries and packages

### Requirements

- [Node.js v18 or higher](https://nodejs.org)

### Building

TODO

## Code quality expectations

1. Ensure the pipeline checks are finished successfully.
2. Ensure the pull request doesn't contain redundant comments, console.log, etc.
3. Ensure your code is covered with unit and integration tests (NOTE: no mocks/stubs in integration tests).
4. Avoid adding comments to explain what code does, code should be self-explanatory and clean.
5. Ensure to add `typedoc`'s types: `@description`, `@param`, `@returns` with proper description
   when introducing a new method.
6. Avoid using variable names like `i` or abbreviations - names should be simple and unambiguous.
7. We are using JSII to polyglot the TDK. Please refer to [JSII restrictions](https://aws.github.io/jsii/user-guides/lib-author/typescript-restrictions/) for Typescript.

## Pull Request Process

1. Ensure any install or build dependencies are removed before the end of the layer when doing a build.
2. Update the [README.md](/README.md) and [CHANGELOG.md](/CHANGELOG.md) with details of changes to the interface, this includes new environment variables, exposed ports, useful file locations and container parameters.
3. Increase the version numbers in any example files and the [README.md](/README.md) to the new version that this Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
4. You may merge the Pull Request once you have the sign-off of two other developers, or if you do not have permission to do that, you may request the second reviewer to merge it for you.

## Auto update of versions and changelogs

After merging PR, the GitHub actions publish all libs that have increased versions.  
To make it easier when you are updating one of lib and all TDK packages you can use ./utils/pre-publish-update.js  
The flow is:

- if libs without internal dependencies were updated - process them first
- if libs with internal dependencies were updated - update libs they depend on and update them
- if TDK should be updated - update all libs TDK depends on and then update TDK

All libs are updated one by one, while all SDKs are updated by one iteration.  
The script updates in package.json / dependencies all internal dependencies of the lib (or SDKs) that were updated, before so no need to manually do it.
More details in the code.

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to make participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

- Using welcoming and inclusive language
- Being respectful of differing viewpoints and experiences
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members
- Avoiding obvious comments about things like code styling and indentation.
  ** If you see yourself wanting to do that more than once - open an issue with a repo to update the ESLint/Prettier rules to address this concern once and for all. **Code reviews should be about logic, not indenting or adding more newlines\*\*

Examples of unacceptable behavior by participants include:

- The use of sexualized language or imagery and unwelcome sexual attention or
  advances
- Trolling, insulting/derogatory comments, and personal or political attacks
- Public or private harassment
- Publishing others' private information, such as a physical or electronic
  address, without explicit permission
- Other conduct which could reasonably be considered inappropriate in a
  professional setting
