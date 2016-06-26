package com.baotoan.spring.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class GenerationCommon {
	public static String generateCode(int length) {
		Random rand = new Random();
		String result = "";
		while (result.length() <= length) {
			int c = rand.nextInt(196);
			if (c >= 48 && c <= 57 || c >= 64 && c <= 90 || c >= 97 && c <= 122) {
				result += (char) c;
			}
		}
		return result;
	}

	public static String md5(String str) {
		try {
			// Create MessageDigest object for MD5
			MessageDigest digest = MessageDigest.getInstance("MD5");

			// Update input string in message digest
			digest.update(str.getBytes(), 0, str.length());

			// Converts message digest value in base 16 (hex)
			return new BigInteger(1, digest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

}
