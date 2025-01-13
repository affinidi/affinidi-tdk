package com.affinidi.tdk.authProvider.type;

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
