package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.internousdev.ecsite.dto.MyPageDTO;
import com.internousdev.ecsite.util.DBConnector;

public class MyPageDAO {
	
	public ArrayList<MyPageDTO> getMyPageUserInfo(String item_transaction_id, String user_master_id){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		
		ArrayList<MyPageDTO> mypageDTO=new ArrayList<MyPageDTO>();
		String sql="select ubit.id,iit.item_name,ubit.total_price,ubit.total_count,ubit.pay,ubit.insert_date "
				+"from user_buy_item_transaction as ubit "
				+"left join item_info_transaction as iit "
				+ "on ubit.item_transaction_id=iit.id "
				+ "where ubit.item_transaction_id=? "
				+ "and ubit.user_master_id=? "
				+ "order by insert_date desc";
		
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, user_master_id);
			
			ResultSet res=ps.executeQuery();
			
			while(res.next()){
				MyPageDTO dto=new MyPageDTO();
				dto.setId(res.getString("id"));
				dto.setItemName(res.getString("item_name"));
				dto.setTotalPrice(res.getString("total_price"));
				dto.setTotalCount(res.getString("total_count"));
				dto.setPayment(res.getString("pay"));
				dto.setInsert_date(res.getString("insert_date"));
				mypageDTO.add(dto);
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
		return mypageDTO;
	}
	
	public int buyItemHistoryDelete(String item_transaction_id,String user_master_id){
		
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		
		String sql="delete from user_buy_item_transaction "
				+"where item_transaction_id=? "
				+ "and user_master_id=?";
		
		int result=0;
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, user_master_id);
			
			result=ps.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			try{
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		return result;
	}
}
