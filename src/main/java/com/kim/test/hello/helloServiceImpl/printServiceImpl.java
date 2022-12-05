package com.kim.test.hello.helloServiceImpl;

import com.kim.test.hello.helloService.helloService;

public class printServiceImpl implements helloService{
	private StringBuffer strBuf = new StringBuffer();
	
	@Override
	public void print(String message) {
		this.strBuf.append(message);	
	}
	
	public String toString() {
		return this.strBuf.toString();
	}
	
	
}
