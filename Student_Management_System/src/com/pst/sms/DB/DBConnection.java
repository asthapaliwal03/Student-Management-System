package com.pst.sms.DB;

import java.sql.*;

public class DBConnection {
	//load the driver
	private static Connection c=null;
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 c=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_student","root","root");
		}catch(Exception e) 
		{
			e.printStackTrace();
		}
		return c;
		
	}
	//get the connection
	//creating statement-sql query
	//execute get result
	//close
}
