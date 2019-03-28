package com.internousdev.ecsite.action;

import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ecsite.dto.MyPageDTO;
import com.internousdev.ecsite.dao.MyPageDAO;

public class MyPageAction extends ActionSupport implements SessionAware {

	private String deleteFlg;
	private String massage;
	private Map<String, Object> session;
	private MyPageDAO mypageDAO=new MyPageDAO();
	private ArrayList<MyPageDTO> mypageList=new ArrayList<MyPageDTO>();
	
	public String execute(){
		
		String result;
		if(!(session.containsKey("id"))){
			result=ERROR;
		}
		if(deleteFlg == null){
			String item_transaction_id=session.get("id").toString();
			String user_master_id=session.get("login_user_id").toString();
			mypageList=mypageDAO.getMyPageUserInfo(item_transaction_id, user_master_id);
		} else if(deleteFlg.equals("1")){
			delete();
		}
		result=SUCCESS;
		return result;
	}

	public void delete(){
		String item_transaction_id=session.get("id").toString();
		String user_master_id=session.get("login_user_id").toString();
		int res=mypageDAO.buyItemHistoryDelete(item_transaction_id,user_master_id);
		
		if(res > 0){
			mypageList=null;
			setMassage("商品情報を正しく削除しました。");
		} else if(res == 0){
			setMassage("商品情報の削除に失敗しました。");
		}
	}
//	public String getDeleteFlg(){
//		return deleteFlg;
//	}
	public void setDeleteFlg(String deleteFlg){
		this.deleteFlg=deleteFlg;
	}
	public String getMassage(){
		return massage;
	}
	public void setMassage(String massage){
		this.massage=massage;
	}
	public ArrayList<MyPageDTO> getMypageList(){
		return mypageList;
	}
	public void setMypageList(ArrayList<MyPageDTO> mypageList){
		this.mypageList=mypageList;
	}
	public Map<String, Object> session(){
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
