package com.internousdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import java.util.ArrayList;

public class UserListAction extends ActionSupport {
	
	private ArrayList<UserInfoDTO> userList=new ArrayList<UserInfoDTO>();
	
	public String execute(){
		
		UserListDAO dao=new UserListDAO();
		userList=dao.getUserInfo();
		
		String result=SUCCESS;
		
		return result;
	}

	public ArrayList<UserInfoDTO> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<UserInfoDTO> userList) {
		this.userList = userList;
	}
}
