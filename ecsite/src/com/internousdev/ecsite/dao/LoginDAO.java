package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.util.DBConnector;

public class LoginDAO {
	
	public LoginDTO getLoginUserInfo(String loginUserId, String loginPassword){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		LoginDTO loginDTO=new LoginDTO();
		
		String sql="select*from login_user_transaction where login_id=? and login_pass=?";
		
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,loginUserId);
			ps.setString(2,loginPassword);
			
			ResultSet res=ps.executeQuery();
			
			if(res.next()){
				loginDTO.setLoginId(res.getString("login_id"));
				loginDTO.setLoginPassword(res.getString("login_pass"));
				loginDTO.setUserName(res.getString("user_name"));
				
				if(!(res.getString("login_id").equals(null))){
					loginDTO.setLoginFlg(true);
				}
				if(!(res.getString("admin_flg").equals(null))){
					loginDTO.setAdmin(true);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			try{
				con.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		return loginDTO;
	}

}
