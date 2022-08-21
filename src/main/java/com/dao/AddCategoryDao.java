package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.db.dbconnect;

public class AddCategoryDao {
	public boolean AddCategory(String CTitle , String CDescription) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO Category(CTitle,CDescription)VALUES(?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, CTitle);
		ps.setString(2, CDescription);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
