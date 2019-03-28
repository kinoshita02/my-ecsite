package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {
	
	public ArrayList<UserInfoDTO> getUserInfo(){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<UserInfoDTO> userList=new ArrayList<UserInfoDTO>();
		
		String sql="select id,login_id,login_pass,user_name from login_user_transaction";
		
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet res=ps.executeQuery();
			
			while(res.next()){
				UserInfoDTO dto=new UserInfoDTO();
				dto.setId(res.getString("id"));
				dto.setLoginid(res.getString("login_id"));
				dto.setLoginpass(res.getString("login_pass"));
				dto.setUsername(res.getString("user_name"));
				userList.add(dto);
			}
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			try{
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		return userList;
	}
}
