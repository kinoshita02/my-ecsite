package com.internousdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class ItemCreateConfirmAction extends ActionSupport implements SessionAware {

	private String itemName;
	private String itemPrice;
	private String itemStock;
	private Map<String, Object> session;
	private boolean Flg=false;
	
	public boolean  number(String itemPrice,String ItemStock){
		try{
		Integer.parseInt(itemPrice);
		Integer.parseInt(itemStock);
		
		setFlg(true);
		return true;
		} catch(NumberFormatException e){
		
		return false;
		}
	}

	public String execute(){
		
		String result=ERROR;
		number(itemPrice,itemStock);
		
		//test code
		System.out.println(itemName);
		System.out.println(itemPrice);
		System.out.println(itemStock);
		//test code
		
		if(!(itemName.equals(""))
				&& !(itemPrice.equals(""))
				&& !(itemStock.equals(""))){
			if(Flg == true){
			session.put("iname", itemName);
			session.put("iprice", itemPrice);
			session.put("istock", itemStock);
			result=SUCCESS;	
			}
		}
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemStock() {
		return itemStock;
	}

	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}
	
	public boolean isFlg() {
		return Flg;
	}

	public void setFlg(boolean flg) {
		Flg = flg;
	}

}
