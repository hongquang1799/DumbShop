package database;

import java.sql.*;
import java.util.*;

public class ConnectionManager {

   static Connection con;
   static String url;
         
   public static Connection getConnection()
   {   	   	
	   String hostName = "localhost";	   	
	   String sqlInstanceName = "";	   	
	   String database = "Mydatabase";	   	
	   String userName = "hongquang";	   	
	   String password = "12345";
   		
	   try
	   {
		   return getSQLServerConnection_SQLJDBC(hostName, sqlInstanceName, database, userName, password);
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
		   System.out.println("dit me may");
	   }
	   
	   return null;
   }

	private static Connection getSQLServerConnection_SQLJDBC(String hostName, //
       String sqlInstanceName, String database, String userName, String password)//
       throws ClassNotFoundException, SQLException 
	{

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		

   // Cấu trúc URL Connection dành cho SQLServer
   // Ví dụ:
   // jdbc:sqlserver://ServerIp:1433/SQLEXPRESS;databaseName=simplehr
		String connectionURL = "jdbc:sqlserver://" + hostName + ":1433" //
           + ";instance=" + sqlInstanceName + ";databaseName=" + database;

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}
}