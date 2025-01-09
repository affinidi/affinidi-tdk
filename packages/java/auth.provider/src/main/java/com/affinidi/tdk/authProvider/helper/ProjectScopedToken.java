package com.affinidi.tdk.authProvider.helper;


public class ProjectScopedToken extends SignPayload{
    private String apiGatewayUrl;
    public String getApiGatewayUrl() {
        return apiGatewayUrl;
    }
    public void setApiGatewayUrl(String apiGatewayUrl) {
        this.apiGatewayUrl = apiGatewayUrl;
    }
    public String getProjectId() {
        return projectId;
    }
    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }
    private String projectId;
}
