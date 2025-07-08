# auth.provider

AuthProvider package enables you to generate the required access token like Project Scoped Token to authenticate and access Affinidi Trust Network services.

For more information, please visit [https://github.com/affinidi/affinidi-tdk](https://github.com/affinidi/affinidi-tdk)

## Requirements

Building the package requires:

1. Java 1.8+
2. Maven (3.8.3+)

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.affinidi.tdk</groupId>
  <artifactId>auth.provider</artifactId>
  <version>1.0.0</version>
</dependency>
```

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

## Usage

Sample usage to generate Project Scoped Token to call Affinidi TDK clients.

> You can store the required parameters like the Token details into an environment file.

```java
import com.affinidi.tdk.authProvider.helper.JwtUtil;
import com.affinidi.tdk.authProvider.helper.AuthProvider;

public class AuthProviderConsumer {
  public static void main(String arg[]) {
        try {
            // Create an authProvider from the values configured in the environment file
            AuthProvider authProviderFromEnvFile = new AuthProvider.Configurations().buildWithEnv();
            String projectToken = authProviderFromEnvFile.fetchProjectScopedToken();
            System.out.println(projectToken);

            boolean isExistingProjectScopeTokenValid = JwtUtil.validProjectTokenPresent(projectToken, authProviderFromEnvFile.apiGatewayUrl);
            System.out.println(isExistingProjectScopeTokenValid);

            // Alternatively you can create an auth provider by explicitly passing the configurations 
            AuthProvider authProviderWithPassedValues = new AuthProvider.Configurations()
                .keyId("")
                .passphrase("")
                .projectId("")
                .tokenId("")
                .build();
            String projectToken = authProvider.fetchProjectScopedToken();
            System.out.println(projectToken);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
```
