package com.internousdev.ecsite.action;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport{
	
	private String massage;
	
	public String execute(){
		ItemListDeleteCompleteDAO dao=new ItemListDeleteCompleteDAO();
		int re=dao.listDelete();
		
		if(re > 0){
			setMassage("削除できました");
		} else{
			setMassage("失敗です。。。");
		}
		return SUCCESS;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
}
