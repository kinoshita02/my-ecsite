package com.internousdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;

public class UserListDeleteCompleteAction extends ActionSupport {
	
	private String massage;
	
	public String execute(){
		UserListDeleteCompleteDAO dao=new UserListDeleteCompleteDAO();
		int re=dao.userDelete();
		
		if(re > 0){
			setMassage("全件削除いたしました。");
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
