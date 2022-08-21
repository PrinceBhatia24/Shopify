package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.dbconnect;

public class FeedbackDao {
	public boolean Feedback(String Name , String Email , String PhoneNo, String Message) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO Feedback(Name,Email,PhoneNo,Message)VALUES(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, Name);
		ps.setString(2, Email);
		ps.setString(3, PhoneNo);
		ps.setString(4, Message);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
