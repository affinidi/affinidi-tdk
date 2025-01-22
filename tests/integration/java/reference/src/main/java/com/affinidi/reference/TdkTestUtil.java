
package com.affinidi.reference;




import com.affinidi.tdk.authProvider.AuthProvider;

import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;

import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.auth.ApiKeyAuth;
import com.affinidi.tdk.wallets.client.models.WalletsListDto;


/**
* To execute this class, 
1. Ensure that base package of the working directory contains a valid .env file with values for each property
as present in .env.example
2. Ensure that auth-provider and common package jar is present in either the central maven respository
3. Or you can go to the resective pakage and run mvn clean install : in order to deply these jars in local
maven respository
*
* @author Priyanka
* 
*/

public class TdkTestUtil {

    public static void main(String arg[]){
        try{
            System.out.println("\n\n=============================");
            System.out.println("01. Testing Wallet Client using TDK java packages");
            System.out.println("=============================\n\n");
            testWalletClient();
            System.out.println("\n\n=============================");
            System.out.println("Wallet Client testing using TDK java packages completed");
            System.out.println("=============================\n\n");


            System.out.println("\n\n=============================");
            System.out.println("02. Testing Issuance Client using TDK java packages");
            System.out.println("=============================\n\n");
            testIssuanceClient();
            System.out.println("\n\n=============================");
            System.out.println("Issuance Client testing using TDK java packages completed");
            System.out.println("=============================\n\n");
        }catch(Exception exception){
            exception.printStackTrace();
        }
    }

    public static void testWalletClient() throws Exception{

        System.out.println("Getting projectScopenToken before calling wallet API");

        AuthProvider authProvider = new AuthProvider.Configurations().buildWithEnv();
        String projectToken = authProvider.fetchProjectScopedToken();
        System.out.println("ProjectScopeToken  > > > > > : "+projectToken);

        // Creating an API Client using the above token
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey(projectToken);

        WalletApi apiInstance = new WalletApi(defaultClient);
        String didType = null;

        System.out.println("Calling listWallets ");
        WalletsListDto response = apiInstance.listWallets(didType);
        System.out.println("Total wallets : "+response.getWallets().size());
        

        System.out.println("Should AuthProvider refresh the token before any further call ? "+authProvider.shouldRefreshToken());
    }

    public static void testIssuanceClient() throws Exception{

        System.out.println("Getting projectScopenToken before calling issuance API");
        AuthProvider authProvider = new AuthProvider.Configurations().buildWithEnv();
        String projectToken = authProvider.fetchProjectScopedToken();

        // Creating an API Client using the above token
        com.affinidi.tdk.credential.issuance.client.ApiClient issuanceClient = com.affinidi.tdk.credential.issuance.client.Configuration.getDefaultApiClient();
        com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth issueTokenAuth = (com.affinidi.tdk.credential.issuance.client.auth.ApiKeyAuth) issuanceClient.getAuthentication("ProjectTokenAuth");
        issueTokenAuth.setApiKey(projectToken);

        IssuanceApi issuanceApi = new IssuanceApi(issuanceClient);
        String projectIdForTesting = "084036a6-a775-478a-9a97-a1323738897f";
        System.out.println(issuanceApi.listIssuance(projectIdForTesting));

        /* Uncomment to test startIssuance. Provide the relevant projectId and crdential data
        StartIssuanceInput startIssuanceInput = new StartIssuanceInput();
        startIssuanceInput.setHolderDid("did:key:zQ3shNb7dEAa7z4LY8eAbPafNM4iSxppwuvndoHkTUUp8Hbt6");
        startIssuanceInput.setClaimMode(ClaimModeEnum.NORMAL);

        StartIssuanceInputDataInner innerData = new StartIssuanceInputDataInner();
        innerData.setCredentialTypeId("AlumniIdentityCard");
        List<StartIssuanceInputDataInner> list = new ArrayList<StartIssuanceInputDataInner>();
        list.add(innerData);

        startIssuanceInput.setData(list);

        System.out.println(issuanceApi.startIssuance("<projectid>", startIssuanceInput));
        */
        
        
    

    }



}
