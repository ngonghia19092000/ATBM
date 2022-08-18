package com.baokaka.common;

import javax.crypto.Cipher;
import java.security.PublicKey;
import java.util.Base64;

public class RSA {
    public static String algori = "RSA/ECB/PKCS1Padding";
    public static String encryptText( String text, PublicKey publickey)
            throws Exception {
        Cipher cipher = Cipher.getInstance(algori);
        cipher.init(Cipher.ENCRYPT_MODE, publickey);
        byte[] plainText = text.getBytes();
        byte[] cipherText = cipher.doFinal(plainText);
        String b64 = Base64.getEncoder().encodeToString(cipherText);
        return b64;
    }


}
