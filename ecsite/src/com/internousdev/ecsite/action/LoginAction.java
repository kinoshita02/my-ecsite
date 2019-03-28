package com.internousdev.ecsite.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.LoginDAO;


public class LoginAction extends ActionSupport implements SessionAware {

	private String loginUserId;
	private String loginPassword;
	private Map<String, Object> session;
	public String errorMassage;
	
	public String execute(){
		
		LoginDTO loginDTO=new LoginDTO();
		LoginDAO loginDAO=new LoginDAO();
		BuyItemDAO buyitemDAO=new BuyItemDAO();
		
		String result;
		
		loginDTO=loginDAO.getLoginUserInfo(loginUserId, loginPassword);
		session.put("loginUser", loginDTO);
		
		if(loginDTO.getAdmin()){
			result="admin";
		}else if(((LoginDTO) session.get("loginUser")).getLoginFlg()){
			result=SUCCESS;
			BuyItemDTO buyitemDTO=buyitemDAO.getBuyItemInfo();
			
			session.put("login_user_id", loginDTO.getLoginId());
			session.put("item_list",buyitemDTO);
			session.put("id", buyitemDTO.getId());
			session.put("buyItem_name",buyitemDTO.getItemName());
			session.put("buyItem_price", buyitemDTO.getItemPrice());

		} else{
			errorMassage="もう一度入力してね";
			result=ERROR;
		}
		return result;
	}
	//	public String getLoginUserId(){
//		return loginUserId;
//	}
	public void setLoginUserId(String loginUserId){
		this.loginUserId=loginUserId;
	}
//	public String getLoginPassword(){
//		return loginPassword;
//	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}
	public Map<String, Object> getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
