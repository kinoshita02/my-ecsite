package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class UserCreateCompleteDAO {
	
	public void createUser(String userId, String password, String name){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		DateUtil date=new DateUtil();
		
		String sql="insert into login_user_transaction(login_id, login_pass, user_name, insert_date)"
				+" values(?,?,?,?)";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setString(2, password);
			ps.setString(3, name);
			ps.setString(4, date.getDate());
			
			ps.execute();
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			try{
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
