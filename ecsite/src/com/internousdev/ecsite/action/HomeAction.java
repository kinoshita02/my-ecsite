package com.internousdev.ecsite.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dao.BuyItemDAO;


public class HomeAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;
	
	public String execute(){
		String result="login";
		
		if(session.containsKey("id")){
			BuyItemDAO buyitemDAO=new BuyItemDAO();
			BuyItemDTO buyitemDTO=buyitemDAO.getBuyItemInfo();
			session.put("item_list",buyitemDTO);
			session.put("id",buyitemDTO.getId());
			session.put("buyItem_name",buyitemDTO.getItemName());
			session.put("buyItem_price",buyitemDTO.getItemPrice());
			
			result=SUCCESS;
		}
		return result;
	}
	public Map<String, Object> getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
