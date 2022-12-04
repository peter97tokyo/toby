package com.kim.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kim.test.hello.hello;


@Controller
public class HomeController {
	
	// spring 
	// IoC를 담당하는 컨테이너를 빈 팩토리 또는 애플리케이션 컨텍스트라고 부르기도 함
	// 오브젝트의 생성과 오브젝트 사이의 런타임 관계를 설정하는 DI관점으로 볼때는 컨테이너를 빈 팩토리라고 한다. 
	// 스프링 컨테이너는 단순한 DI 작업보다 더 많은 일을 한다
	// DI를 위한 빈 팩토리에 엔터프라이즈 애플리케이션을 개발하는 데 필요한 여러 가지 컨테이너 기능을 추가한 것을 애플리케이션 컨텍스트라고 부른다.
	
	
	// 애플리케이션 컨텍스트는 그자체로 IoC와 DI를 위한 빈 팩토리이면서 그 이상의 기능을 가졌다고 보면 된다. 
	
	// 스프링의 IoC 컨테이너는 일반적으로 애플리케이션 컨텍스를 말한다. 
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		// 1장 : IoC 컨테이너를 이용해 애플리케이션 만들기 1-1
		
		StaticApplicationContext ac = new StaticApplicationContext(); // <== ApplicationContext 인터페이스를 구현한 오브젝트
		
		// ac가 IoC 컨테이너로써 동작하기 위해서는 두 가지가 필요하다. 바로 POJO 클래스와 설정 메타정보이다.
		
		// 구체적으로 서로의 이름과 존재를 알 필요도 없다. 단지 서로 관계를 맺고 사용될 때 필요한 최소한의 인터페이스 정보만 공유하면 된다.
		
		// POJO 코드를 설계할 때는 일단 유연한 변경 가능성을 고려해서 만든다.
		
		// ==================================================================================
		
		// 1장 : IoC 컨테이너를 이용해 애플리케이션 만들기 1-2
		
		// POJO 클래스들 중에 애플리케이션에서 사용할 것을 선정하고 이를 IoC 컨테이너가 제어할 수 있도록 적절한 메타정보를 만들어 제공하는 작업이다. 
		
		// IoC 컨테이너(스프링 컨테이너)의 가장 기초적인 역할은 오브젝트(빈)를 생성하고 이를 관리하는 것이다.
		
		// only xml 틀리다. BeanDefinition 인터페이스로 표현되는 순수한 추상 정보보다.
		// ====>
		// 무엇이든 BeanDefinition으로 정의되는 스프링의 설정 메타정보의 내용을 표현한 것이 있다면 무엇이든지 사용 가능
		
		// 스프링 IoC 컨테이너, 즉 애플리케이션 컨텍스트는 바로 이 BeanDefinition으로 만들어진 메타 정보를 담은 오브젝트를 사용해 IoC와 DI 작업을 수행한다.
		
		// how ?		
		// beanDefinition 오브젝트로 변환해주는 BeanDefinitionReader가 있으면 된다.
		
		// 스프링 IoC 컨테이너는 각빈에 담긴 메타정보를 읽고 Bean을 생성 생성, 프로퍼티나 생성자를 통해 의존 오브젝트를 주입해준는 DI 작업 을 수행
		
		// DI로 연결되는 오브젝트들이 모여서 하나의 애플리케이션을 구성하고 동작하게 된다. 
		
		// IoC 컨테이너를 통해 POJO 클래스와 설정 메타정보가 결합돼서 하나의 애플리케이션이 만들어지는 모습을 보여준다.
		
		// ===================================================================================
		
		ac.registerSingleton("hello1", hello.class); // => hello 클래스를 hello1이라는 이름의 싱글톤 빈으로 컨테이너에 등록한다.
		
		// StaticApplicationContext는 코드에 의해 설정 메타 정보를 등록하는 기능을 제공하는 애플리케이션 컨텍스트이다.
		
		// IoC 컨테이너가 관리하는 빈은 오브젝트 단위이지 클래스 단위가 아니다.
		
		// 같은 클래스의 빈을 여러개 등록하는 이유는 빈마다. 다른 설정을 지정해두고 사용하기 위해서다. db 설정을 다르게 하여 사용하고 싶은 db를 지정해서 사용가능
		
		// =====================================================================================
		
		// 이번에는 직접 BeanDefinition타입의 설정 메타정보를 만들어서 IoC 컨테이너에 등록하는 방법을 사용해보자.
		
		// RootBeanDefinition implements BeanDefinition
		
		// RootBeanDefinition 오브젝트를 만들어서 빈에 대한 설정정보를 넣어주고 IoC 컨테이너에 등록할수 있다.
		
		// ====================================================================================
		
		BeanDefinition helloDef = new RootBeanDefinition(hello.class); // 빈 메타정보를 담은 오브젝트를 만든다. 
		// 빈 클래스는 hello로 지정한다.
		System.out.println("getPropertyValues확인");
		System.out.println(helloDef.getPropertyValues());
		System.out.println("addPropertyValue입력중...");
		helloDef.getPropertyValues().addPropertyValue("name", "spring"); // 빈의 name 프로퍼티에 들어갈 값을 지정한다.
		// addPropertyValue <= 이 메소드에는 값외에도 BeanReference 타입의 래퍼런스 오브젝트를 넣을 수 있다.
		System.out.println("getPropertyValues확인");
		System.out.println(helloDef.getPropertyValues());
		ac.registerBeanDefinition("hello2", helloDef); 
		// 앞에서 생성한 빈 메타정보를 hello2라는 이름을 가진 빈으로 해서 등록한다.
		
		
		// =======================================================================================
		// 빈은 오브젝트단위이기 때문에 같은 클래스라도 두개를 등록하면 서로 다른 빈 오브젝트가 생성된다. 
		
		hello hello2 = ac.getBean("hello2", hello.class); // BeanDefinition으로 등록된 빈이 컨테이너에 의해 만들어지고
		// 프로퍼티 설정이 됐는지 확인한다.
		
		//assertThat(hello2.sayHello(), is("hello spring"));
		// 없음... 토비의 스프링에는 있지만 없다
		
		
		
		return "univ/whatIsJsp";
	}
	
}
