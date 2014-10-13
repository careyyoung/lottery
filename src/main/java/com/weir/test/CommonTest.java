package com.weir.test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonTest {
	public static void main(String args[]){
		Date date1 = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		System.out.println(format.format(date1));
		boolean i;
		int j=2;
		int k=1;
		System.out.println(i=j!=k);
	}
	
}
