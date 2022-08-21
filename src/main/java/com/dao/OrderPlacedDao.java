package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.dbconnect;

public class OrderPlacedDao {
	public boolean OrderPlaced(String Name , String PhoneNo , String Email, String Address,String Landmark,String City ,String State, String Pincode, String PaymentType) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO OrderPlacedDetails(Name,PhoneNo,Email,Address,Landmark,City,State,Pincode,PaymentType)VALUES(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, Name);
		ps.setString(2, PhoneNo);
		ps.setString(3, Email);
		ps.setString(4, Address);
		ps.setString(5,Landmark);
		ps.setString(6, City);
		ps.setString(7, State);
		ps.setString(8, Pincode);
		ps.setString(9, PaymentType);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
