package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteCompleteDAO {

	public int listDelete(){
	
	DBConnector db=new DBConnector();
	Connection con=db.getConnection();
	
	String sql="delete from item_info_transaction";
	
	int res=0;
	try{
		PreparedStatement ps=con.prepareStatement(sql);
		res=ps.executeUpdate();
	} catch(SQLException e){
		e.printStackTrace();
	}finally{
		try{
			con.close();
		} catch(SQLException e){
			e.printStackTrace();
		}
	}
	return res;
	}
}
