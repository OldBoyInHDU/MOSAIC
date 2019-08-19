package com.zzxx.music.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class FactoryUtils {
	private static Properties pros;
	static{
		pros = new Properties();
		try {
			pros.load(new FileInputStream(FactoryUtils.class.getResource("Factory.properties").getFile()));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static Object getInstance(String classKey) {
		// 1.通过key，获得对应的类名
		String className = pros.getProperty(classKey);
		// 2.获得对应的Class对象
		try {
			Class<?> clz = Class.forName(className);
			// 3.创建对象，并返回
			return clz.newInstance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

}
