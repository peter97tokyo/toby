package com.kim.test.reg_beab_with_dependency;

import static org.junit.Assert.*;

import org.hamcrest.core.Is;
import org.junit.Test;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.RuntimeBeanReference;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.context.support.StaticApplicationContext;

import com.kim.test.hello.hello;
import com.kim.test.hello.helloServiceImpl.printServiceImpl;

public class test {

	@Test
	public void test() {
		System.out.println("@test");
		StaticApplicationContext ac = new StaticApplicationContext();
		
		ac.registerBeanDefinition("printer", new RootBeanDefinition(printServiceImpl.class)); // => printServiceImpl 클래스 타입이며, printer라는 이름을 가진 빈을 등록한다.
		
		BeanDefinition helloDef = new RootBeanDefinition(hello.class);
		
		helloDef.getPropertyValues().addPropertyValue("name", "spring"); // => 단순 값을 가지는 프로퍼티 등록
		helloDef.getPropertyValues().addPropertyValue("printer", new RuntimeBeanReference("printer")); 
		// => 아이디가 printer인 빈에 대한 레퍼런스를  프로퍼티로 등록
		
		ac.registerBeanDefinition("hello", helloDef);
		
		hello hello = (com.kim.test.hello.hello) ac.getBean("hello");
		hello.print();
		
		//assertThat(ac.getBean("print").toString(), Is<T>("hello spring"));
		// hello 클래스의 print() 메소드는 DI 된 printer 타입의 오브젝트에게 요청해서 인사말을 출력한다.
		// 이 결과를 스트링으로 저장해두는 printer 빈을 통해 확인한다.
		
		// 이제 IoC 컨테이너가 POJO 클래스와 설정 메타정보를 이용해 어떻게 최종 사용할 애플리케이션 런타입 오브젝트를 만들어내는지 이해 가능
		
		// 기본적으로 싱글톤 빈은 애플리케이션 컨텍스트의 초기화 작업중에 모두 만들어진다.
		
	}

}
