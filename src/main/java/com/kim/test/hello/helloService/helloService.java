package com.kim.test.hello.helloService;

public interface helloService {
	void print(String message);
	// 각자 기능에 충실하게 독립적으로 설계된 POJO 클래스를 만들고, 결합도 낮은 유연한 관계를 가질수 있도록  
	// 인터페이스를 이용해 연결해주는 것까지가 IoC 컨테이너가 사용할 POJO를 준비하는 첫 단계이다.
}
