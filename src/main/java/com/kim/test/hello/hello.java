package com.kim.test.hello;

import com.kim.test.hello.helloService.helloService;

public class hello {
	String name;
	helloService hs;
	
	
	public String sayHello() {
		return "hello " + name;
	}
	
	public void print() {
		this.hs.print(sayHello()); // input name and print name 
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPrinter(helloService hs) {
		this.hs = hs;
	}
}
