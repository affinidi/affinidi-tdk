package helpers;

import com.affinidi.tdk.wallets.client.ApiClient;
import com.affinidi.tdk.wallets.client.Configuration;
import com.affinidi.tdk.wallets.client.auth.ApiKeyAuth;
import com.affinidi.tdk.wallets.client.apis.WalletApi;
import com.affinidi.tdk.wallets.client.models.CreateWalletInput;
import com.affinidi.tdk.wallets.client.models.CreateWalletResponse;
import com.affinidi.tdk.wallets.client.models.WalletDto;

public class WalletTestHelper {

    public enum DidMethodType {
        KEY,
        WEB
    }

    private final WalletApi walletApi;

    public WalletTestHelper() {
        ApiClient client = Configuration.getDefaultApiClient();
        ApiKeyAuth auth = (ApiKeyAuth) client.getAuthentication("ProjectTokenAuth");
        auth.setApiKeySupplier(TestUtils.createTokenSupplier());

        this.walletApi = new WalletApi(client);
    }

    public WalletDto createWallet(DidMethodType methodType) throws Exception {
        CreateWalletInput input = new CreateWalletInput()
            .name("Test Wallet")
            .description("Temporary wallet for integration test");

        switch (methodType) {
            case WEB -> {
                String randomDomain = TestUtils.generateRandomString() + ".com";
                // TODO: Fix API spec to generate enum for WEB
                input.setDidMethod(CreateWalletInput.DidMethodEnum.KEY);
                input.setDidWebUrl(randomDomain);
            }
            case KEY -> input.setDidMethod(CreateWalletInput.DidMethodEnum.KEY);
        }

        CreateWalletResponse response = walletApi.createWallet(input);
        return response.getWallet();
    }

    public void deleteWallet(String id) throws Exception {
        walletApi.deleteWallet(id);
    }
}
