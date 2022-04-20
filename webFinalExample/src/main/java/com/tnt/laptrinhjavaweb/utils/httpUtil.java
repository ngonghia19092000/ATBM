package com.tnt.laptrinhjavaweb.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;

public class httpUtil {
	
	private String value;
	
	public httpUtil( String value ) {
		this.value = value;
	}
	
	public <T> T toModel(Class<T> tClass) { //chỗ này do không biết trả về gì nên để là toModel nếu model nào chuyền vào thì nó là model đó
		try {
			return new ObjectMapper().readValue(value, tClass); //nó sẽ convert từ json qua string và có thể convert ngược lại được (đang json -> string)
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}				
		return null;
	}
	
	public static httpUtil of (BufferedReader reader) { // đoạn này là convert từ json sang chuỗi string tức là biding json qua cho thằng model đó
		
		StringBuilder sb = new StringBuilder();
	    try {
	    	String line;
			while ((line = reader.readLine()) != null) {
			    sb.append(line);
			}
		} catch (IOException e) {
			System.out.print(e.getMessage());
		}
		return new httpUtil(sb.toString()); // trả về kiểu dữ liệu nào đó
	}
}
