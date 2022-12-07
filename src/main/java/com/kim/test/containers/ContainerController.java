package com.kim.test.containers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kim.test.application_context.genericApplicationContext;

@Controller
public class ContainerController {
	// 1-2 컨테이너의 종류와 사용방법

	// 스프링 개발자? => 직접 ApplicationContext 인터페이스 구현 x(없음)

	// 대부분 간단한 설정을 통해 ApplicationContext 자동으로 만들어지는 방법을 사용

	// StaticApplicationContext ==> 실전 x 학습, 테스트 ok

	// ==============================================================

	// GenericApplicationContext ==> 실전에서 사용할 수 있는 모든 기능을 갖추고 있는 애플리케이션 컨텍스트

	// xml같은 외부 파일 => 빈 설정 메타정보를 리더를 통해 읽어들여서 메타정보로 전환해서 사용

	// BeanDefinitionReader으로 읽어서 ===> BeanDefinition으로 정보 변환

	// xml로 작성된 빈 설정정보를 읽어서 컨테이너에게 전달하는 대표적인 빈 설정정보 리더는 XmlBeanDefinitionReader이다.

	// 이 리더를 GenericApplicationContext가 이용하도록 하여 hello 빈과 printer 빈을 등록하고 사용하게 만들어
	// 보자

	// ===============================================================

	// PropertiesBeanDefinitionReader => 작성된 propertices 빈 메타정보로 사용함

	@RequestMapping(value = "/generic", method = RequestMethod.GET)
	public String generic() {

		return "whatIsJsp";
	}

}
