package com.baokaka.common;

import java.io.*;
import java.security.*;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;

public class CreateKey {
    public static String algorithm = "RSA";
    public static int keySize = 1024;
    private KeyPair keyPair;
    private PublicKey publickey;
    private PrivateKey privatekey;

    public void createKey() throws NoSuchAlgorithmException {
        KeyPairGenerator key = KeyPairGenerator.getInstance(algorithm);
        key.initialize(keySize);
        keyPair = key.generateKeyPair();
        publickey = keyPair.getPublic();
        privatekey = keyPair.getPrivate();
    }

    // convert publicKey -> Base64
    public String getPublickey() {
        String b64 = Base64.getEncoder().encodeToString(publickey.getEncoded());
        return b64;
    }

    // convert privateKey -> Base64
    public String getPrivatekey() {
        String b64 = Base64.getEncoder().encodeToString(privatekey.getEncoded());
        return b64;
    }

    // Base64--> PublicKey
    public PublicKey convertPublicKey(String alogorithm, String b64Public) throws Exception {
        byte[] decode = Base64.getDecoder().decode(b64Public);
        X509EncodedKeySpec ks = new X509EncodedKeySpec(decode);
        KeyFactory kf = KeyFactory.getInstance(alogorithm);
        return kf.generatePublic(ks);
    }

    // base64-->PrivateKey
    public PrivateKey convertPrivateKey(String alogorithm, String b64Private) throws Exception {
        byte[] decode = Base64.getDecoder().decode(b64Private);
        PKCS8EncodedKeySpec ks = new PKCS8EncodedKeySpec(decode);
        KeyFactory kf = KeyFactory.getInstance(alogorithm);
        return kf.generatePrivate(ks);
    }

    // save publicKey in file
    public void savePublicKey(String path, String base64) throws Exception {
        File publickeyFile = new File(path + "PublicKey.key");
        FileOutputStream out = new FileOutputStream(publickeyFile);
        out.write(base64.getBytes("UTF-8"));
        out.close();
    }

    // save privateKey in file
    public void savePrivateKey(String path, String base64) throws Exception {
        File privatekeyFile = new File(path + "PrivateKey.key");
        FileOutputStream out = new FileOutputStream(privatekeyFile);
        out.write(base64.getBytes("UTF-8"));
        out.close();
    }

    // read PublicKey in file
    public String readPublicKey(String path, String algorithm) throws Exception {
        File kf = new File(path);
        DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(kf)));
        String b64Public = in.readLine();
        in.close();

        return b64Public;
    }

    // read PrivateKey in file
    public String readPrivateKey(String path, String algorithm) throws Exception {
        File kf = new File(path);
        DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(kf)));
        String b64Private = in.readLine();
        in.close();
        return b64Private;
    }

}
