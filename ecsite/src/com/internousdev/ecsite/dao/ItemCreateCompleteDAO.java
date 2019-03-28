package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.internousdev.ecsite.util.DateUtil;
import com.internousdev.ecsite.util.DBConnector;

public class ItemCreateCompleteDAO {
	
	public void createItem(String iname, String iprice, String istock){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		DateUtil date=new DateUtil();
		
		String sql="insert into item_info_transaction(item_name,item_price,item_stock,insert_date)"
				+ " values(?,?,?,?)";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, iname);
			ps.setString(2, iprice);
			ps.setString(3, istock);
			ps.setString(4, date.getDate());
			
			ps.execute();
		} catch(SQLException e){
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
