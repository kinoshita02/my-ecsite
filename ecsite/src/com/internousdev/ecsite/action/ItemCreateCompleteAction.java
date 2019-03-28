package com.internousdev.ecsite.action;

import com.internousdev.ecsite.dao.ItemCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class ItemCreateCompleteAction extends ActionSupport implements SessionAware {
	
	private Map<String, Object> session;
	
	public String execute(){
		ItemCreateCompleteDAO dao=new ItemCreateCompleteDAO();
		dao.createItem(session.get("iname").toString(),
				session.get("iprice").toString(),
				session.get("istock").toString());
		
		String result=SUCCESS;
		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
