package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

import java.util.ArrayList;

public class ItemListDAO {
	
	public ArrayList<ItemInfoDTO> getItemInfo(){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		ArrayList<ItemInfoDTO> dtoList=new ArrayList<ItemInfoDTO>();
		
		String sql="select id,item_name,item_price,item_stock from item_info_transaction";
		
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet res=ps.executeQuery();
			
			while(res.next()){
				ItemInfoDTO dto=new ItemInfoDTO();
				dto.setItemid(res.getString("id"));
				dto.setItemname(res.getString("item_name"));
				dto.setPrice(res.getString("item_price"));
				dto.setStock(res.getString("item_stock"));
				dtoList.add(dto);
				
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			try{
			con.close();
		} catch(SQLException e){
			e.printStackTrace();
		}
		}
		return dtoList;
	}
}
