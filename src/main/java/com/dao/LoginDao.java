package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.db.dbconnect;

public class LoginDao {
	public boolean verify(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	
	public String getName(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				String name = rs.getString("Name");
				return name;
			}
		}		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public String getType(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				String Type =rs.getString("Type");
				return Type;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
}
