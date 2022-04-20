package com.tnt.laptrinhjavaweb.utils;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil {

	private static SessionUtil sessionUtil = null;
	
	public static SessionUtil getInstance() {
		/*
		 * hàm này kiểm tra xem cái sessionUtil này đã khởi tạo chưa nếu chưa thì khởi
		 * tạo mà đã khởi tạo thì trả về chính nó tức là có rồi thì dùng thôi
		 */
		if(sessionUtil == null) {
			sessionUtil = new SessionUtil();
		}
		return sessionUtil;
	}
	
	public void putValue(HttpServletRequest request, String key, Object value) {
		// duy tri thong tin nguoi dung muỗn dùng nó thì bắt buộc phải có httpsvlrequest và các cai key
		request.getSession().setAttribute(key, value); // sự dụng sesssion của httpsvl
	}
	
	public Object getValue(HttpServletRequest request, String key) {
		// lay thong tin nguoi dung
		//tại sao lại dùng obj vì chung ta không biết lúc lấy ra nó là dl gì cho nên lúc mà chúng ta cần dl gì thì chúng ta sẽ ép kiểu
		//muốn getValue thì cũng phải có các biến truyền vào như trên
		return request.getSession().getAttribute(key);
	}
	
	public void removeValue(HttpServletRequest request, String key) {
		request.getSession().removeAttribute(key);
	}
}
/* tại sao phải có request? có req thì mới khởi tạo được sesssion */