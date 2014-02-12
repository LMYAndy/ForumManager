package cn.ce.framework.utils;

import org.apache.commons.codec.binary.Base64;

public class BASE64Utility {

	private static final String SEED = "_user";

	public static byte[] decryptBASE64(String key) throws Exception {
		return Base64.decodeBase64(key);
	}


	public static String encryptBASE64(byte[] key) throws Exception {
		return Base64.encodeBase64String(key);
	}
	
	//得到加密后的密文
	public static String Encryption(String keyWord)throws Exception{
		String username = keyWord+SEED;
		String encodeUsername = BASE64Utility.encryptBASE64(username.getBytes());
		return encodeUsername;
	}
	
	//得到解密后的明文
	public static String Decrypt(String securityWord)throws Exception{
		byte[] byteArray = BASE64Utility.decryptBASE64(securityWord);
		String decodeUserName = new String(byteArray);
		decodeUserName = decodeUserName.replace(SEED, "");
		return decodeUserName;
	}

	public static void main(String[] args) throws Exception {
		String s = "bossuser";
		System.out.println(Encryption(s));
	}
}