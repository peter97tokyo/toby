package com.kim.test.hello.helloServiceImpl;

import com.kim.test.hello.helloService.helloService;

public class consoleServiceImpl implements helloService{
	@Override
	public void print(String message) {
		System.out.println(message);		
	}

}
