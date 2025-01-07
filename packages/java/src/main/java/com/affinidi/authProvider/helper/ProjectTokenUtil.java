package com.affinidi.authProvider.helper;

import com.affinidi.authProvider.types.ProjectScopedToken;
import com.affinidi.authProvider.types.SignPayload;

public class ProjectTokenUtil {

    public SignPayload signPayload(String tokenId, String audience, String privateKey, String passphrase, String keyId){
        return null;

    }

    public SignPayload getUserAccessToken(String tokenId, String audience, String privateKey, String passphrase, String keyId){
        return null;
    }

    public ProjectScopedToken fetchProjectScopedToken(String apiGatewayUrl, String projectId, String tokenId, 
                                                        String audience, String privateKey, String passphrase, String keyId){
        return null;
    }

}
