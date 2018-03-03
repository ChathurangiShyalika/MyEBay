package com.im.myebay.test;

import java.io.File;
import java.util.Date;

import com.im.myebay.db.DB;
import com.im.myebay.model.Item;

public class HibernateTest {

	public static void main(String[] args) {
		Item item = new Item();
		item.setTitle("Galaxy S6 For Sale");
		item.setDescription("Galaxy S6 Description Here");
		item.setDate(new Date());
		item.setPrice(65000.0);
		File photo = new File("E:/image1.jpg");
		item.setPhoto(photo);
		item.setPhotoFileName(photo.getName());
		item.setPhotoContentType("image/jpg");
		DB.save(item);
		
	}

}
