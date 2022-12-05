package com.kim.test.application_context;

import org.junit.Test;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.context.support.GenericApplicationContext;

import com.kim.test.hello.hello;

public class genericApplicationContext {

	@Test
	public void genApplicationContext() {
		System.out.println("hello genericApplicationContext!!");
		GenericApplicationContext ac = new GenericApplicationContext();
		
		XmlBeanDefinitionReader reader = new XmlBeanDefinitionReader(ac);
		
		reader.loadBeanDefinitions("/spring/genericContext.xml");
		ac.refresh();
		hello hello = (com.kim.test.hello.hello) ac.getBean("hello");
		hello.print();
	}
	
	
}
