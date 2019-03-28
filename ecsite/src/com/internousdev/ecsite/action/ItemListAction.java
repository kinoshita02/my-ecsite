package com.internousdev.ecsite.action;

import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.internousdev.ecsite.dao.ItemListDAO;

public class ItemListAction extends ActionSupport {
	
	private ArrayList<ItemInfoDTO> dtoList=new ArrayList<ItemInfoDTO>();
	private ItemListDAO dao=new ItemListDAO();
	
	public String execute(){
		
		dtoList=dao.getItemInfo();
		
		String result;
		result=SUCCESS;
		
		return result;
	}
	
	public ArrayList<ItemInfoDTO> getDtoList(){
		return dtoList;
	}
	public void setDtoList(ArrayList<ItemInfoDTO> dtoList){
		this.dtoList=dtoList;
	}
}
