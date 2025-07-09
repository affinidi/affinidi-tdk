package helpers;

import java.net.URI;
import java.util.Random;

public class TestUtils {
    private static final String ALPHABET = "abcdefghijklmnopqrstuvwxyz";
    private static final int RANDOM_STRING_LENGTH = 12;

    /**
     * Generates a random string using characters from ALPHABET.
     */
    public static String generateRandomString() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder(RANDOM_STRING_LENGTH);
        for (int i = 0; i < RANDOM_STRING_LENGTH; i++) {
            sb.append(ALPHABET.charAt(random.nextInt(ALPHABET.length())));
        }
        return sb.toString();
    }

    public static String replaceBaseDomain(String originalBasePath, String newDomain) {
        URI originalUri = URI.create(originalBasePath);
        URI newDomainUri = URI.create(newDomain);
        return newDomainUri.resolve(originalUri.getPath()).toString();
    }
}
