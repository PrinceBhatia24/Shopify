package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.dbconnect;

public class RegistrationDao {
	public boolean Registration(String Name , String Email , String PhoneNo, String Password,String Type) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO Registration(Name,Email,PhoneNo,Password,Type)VALUES(?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, Name);
		ps.setString(2, Email);
		ps.setString(3, PhoneNo);
		ps.setString(4, Password);
		ps.setString(5, Type);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
