package com.internousdev.ecsite.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dao.BuyItemCompleteDAO;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	
	public String execute(){
		BuyItemCompleteDAO bicDAO=new BuyItemCompleteDAO();
		bicDAO.buyItemInfo(
				session.get("id").toString(),
				session.get("login_user_id").toString(),
				session.get("total_price").toString(),
				session.get("count").toString(),
				session.get("pay").toString());
		
		String result=SUCCESS;
		return result;
	}
	public Map<String, Object> getSession(){
		return session;
	}
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
