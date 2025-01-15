package com.affinidi.tdk.authProvider.types;

/**
* This class represents the output returned 
* when {@link AuthProvider#signIotaJwt()} is invoked
* 
*
* @author Priyanka
* 
*/
public class IotaJwtOutput {
    private final String iotaSessionId;
    private final String iotaJwt;

    public IotaJwtOutput(String iotaSessionId, String iotaJwt){
        this.iotaJwt = iotaJwt;
        this.iotaSessionId = iotaSessionId;
    }

    public String getIotaSessionId() {
        return iotaSessionId;
    }
    public String getIotaJwt() {
        return iotaJwt;
    }
    

}
