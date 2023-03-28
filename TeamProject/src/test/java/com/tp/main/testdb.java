package com.tp.main;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

 

public class testdb {

 private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
 private static final String URL = "jdbc:mysql://localhost:3306/first_project?serverTimezone=Asia/Seoul";
 private static final String USER = "root";
 private static final String PW = "root1234";
 
 @Test
 public void testConnection() throws Exception{
  Class.forName(DRIVER);
  
  try(Connection con = DriverManager.getConnection(URL, USER, PW)){
   System.out.println("성공");
   System.out.println(con);
  }catch (Exception e) {
   System.out.println("에러발생");
   e.printStackTrace();
  }
 }

}
