package com.im.myebay.action;

import java.io.File;
import java.util.Date;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.im.myebay.db.DB;
import com.im.myebay.model.Item;
import com.opensymphony.xwork2.ActionSupport;

public class ItemAction extends ActionSupport{

	private Item item;//item class eke variables godak hadanne nathuwa item class eken object ekk hadanawa
	
	public String execute(){
		item.setDate(new Date());
		DB.save(item);
		
		try{
			ServletContext servletContext = ServletActionContext.getServletContext();
			String path ="/uploads/";
			String filePath=servletContext.getRealPath(path);
			System.out.println("Server path:"+filePath);
			File fileToCreate = new File(filePath, item.getPhotoFileName());
			FileUtils.copyFile(item.getPhoto(),fileToCreate);
		} catch(Exception e){
			e.printStackTrace();
			addActionError(e.getMessage());
			return INPUT;
			}
		return "success";
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}
}
