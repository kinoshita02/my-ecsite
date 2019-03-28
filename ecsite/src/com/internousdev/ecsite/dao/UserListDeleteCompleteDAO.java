package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDeleteCompleteDAO {
	
	public int userDelete(){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		int res=0;
		
		String sql="delete from login_user_transaction";
		
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			res=ps.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			try{
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		return res;
	}

}
