package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.dbconnect;

public class AddProductDao {
	public boolean AddProduct(String PName, String PDescription, String PPrice , String PQuantity, String PCategory, String PImageFileName) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO Products(PName,PDescription,PPrice,PQuantity,PCategory,PImageFileName)VALUES(?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, PName);
		ps.setString(2, PDescription);
		ps.setString(3, PPrice);
		ps.setString(4, PQuantity);
		ps.setString(5, PCategory);
		ps.setString(6, PImageFileName);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
