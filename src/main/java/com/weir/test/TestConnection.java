package com.weir.test;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;


public class TestConnection {
	 public static void main(String[] args) throws Exception
	    {
	        String driver="com.mysql.jdbc.Driver";
	        String url="jdbc:mysql://127.0.0.1:3306/weir";
	        Class.forName(driver);
	        Connection connecter=(Connection) DriverManager.getConnection(url,"root","226588");
	            if(!connecter.isClosed()) System.out.println("success in getConnetion");
	       
	}
	 
}

