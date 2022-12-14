<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
>웹의 의미 <br>
	인터넷 기반의 정보 공유 서비스 <br>
	world wide web, www 또는 w3 <br>
	정보 서비스 <br>
<br>
>인터넷 기반의 전세계적 정보 공유 공간<br>
	분산된 웹 서버에 존재하는 하이퍼 텍스트 <br>
	문서들이 서로 연결된 시스템 <br>
<br>
>하이퍼 텍스트 <br>
	웹 상에 존재하는 문서 형태로서 <br>
	텍스트 외에 이미지 동영상 멀티미디어 요소를 포함 <br>
	하이퍼 링크를 통해 다른 하이퍼텍스트와 연결됨 <br>
	웹 브라우저를 이용해 하이퍼텍스트를 볼 수 있음 <br>
	html로 표현되며 http 프로토콜을 사용하여 전송됨 <br>
<br>
> w3c<br>
	world wide web consortium의 약자 <br>
	국제 웹 표준화 기구 <br>
	html, http, xml 등의 웹 관련 기술을 관리함 <br>
<br>
> 정적 웹 문서 <br>
	정적인 텍스트로 문서의 내용이 바뀌지 않음 <br>
	클라이언트 텍스트로 문서의 내용이 바뀌지 않음 <br>
	클라이언트가 서버에게 정적 웹 문서를 요청하면, <br>
	서버는 해당 문서를 찾아서 전달함 <br>
	정적 웹 문서를 요청하면 항상 동일한 결과가 전달됨 <br>
<br>
> 동적 웹 문서 <br>
	동적 웹 문서를 사용하여 최종 결과가 동적으로 만들어짐 <br>
	클라이언트 측 처리와 서버측 처리 방식이 있음 <br>
	jsp는 동적 웹 문서를 작성하는 기술임 <br> 

<br>
> 웹 애플리케이션 <br>
	웹에서 실행되는 응용프로그램<br>
> 웹 애플리케이션의 구분 <br>
	클라이언트 측 실행/서버 측 실행 <br>
	컴파일 방식/비컴파일 방식 <br>
======================================================<br>

2. 웹 애플리케이션의 실행 <br>
> 웹 서비스의 제공과 구성 요소 <br>
	웹 클라이언트 <br>
	웹 브라우저는 웹 서버에 요청을 보내고 응답결과를 출력 <br>
<br>
> 웹 서버 <br>
	클라이언트의 요청을 처리하도록 프로세스를 관리 <br>
	요청을 처리한 결과를 클라이언트에 보냄 <br>
<br>
> 웹 애플리케이션 서버(웹 컨테이너) <br>
	웹 애플리케이션의 실행 환경 <br>
	jsp 프로그램을 실행시키고 결과를 웹서버에 전달 <br>
<br>
> 데이터 베이스 <br>
	웹 서비스 수행에 필요한 데이터를 저장하고 제공 <br>
 ========================================================<br>
 3. 웹 애플리케이션과 실행위치 <br>
 <br>
 > 클라이언트 측 실행<br>
 	웹 문서에 동적 요소를 포함 시켜 클라이언트에 전송 <br>
 	웹 브라우저가 해석하여 페이지를 생성 <br>
 	애플릿, JavaScript, 플래시 <br>
 	보안의 문제 <br>
 vs <br>
 > 서버 측 실행<br>
 	서버에서 실행되어 응답 문서를 동적으로 생성 <br>
 	웹 애플리케이션 서버가 수행한 결과가 브라우저에 전송됨 <br>
 	서블릿, jsp, asp, php, cgl방식 <br>
 	서버의 부담 <br>
 =========================================================<br>
 4. 웹 애플리케이션의 구현 방식 <br>
 > 컴파일 방식 <br> 
 	컴파일 과정을 통해 실행파일이나 바이트 코드가 만들어져 사용됨<br>
 	java 서블릿, jsp, perl, c, c++을 이용한 CHI방식 <br>
 vs<br>
 > 비컴파일 방식 <br>
 	매 요청마다 스크립트를 해석하여 실행하는 방식 <br>
 	javascript는 클라이언트에서 실행되는 스크립트 언어<br> 
 ==========================================================<br>
 5. CGI와 WAS(1/4) <br>
 > CGI(Common Gateway Interface) <br>
 > 동적으로 웹 페이지를 생성하기 위한 방식 중 하나 <br>
 	고급 언어 프로그램을 실행시켜 html 코드를 생성한 후 전달 함 <br>
 > 클라이언트의 요청이 있으면 해당 프로그램을 실행시키기 위해 개별 프로세스를 생성함<br>
 	동일한 CGI를 요청해도 요청의 개수만큼 프로세스를 생성하므로 웹 서버에 부하를 줌 <br>
 <br>
 (2/4)<br>
 > WAS(web application Server)
 > 웹 애플리케이션을 실행하고 관리하는 별도의 전담 프로그램 <br>
 	모든 요청에 대해 매번 프로세스를 생성하지 않고 하나의 자바 가상기계내에서 수행함 <br> 
 
 	요청을 처리하기 위해 스레드를 생성함 <br>
 > 웹 페이지 생성 외에도 많은 기능을 수행함 <br>
 	api제공, 부하의 균형, 고장 조치등 <br>
 <br>
 (3/4)<br>
 > CGI : 웹 서버가 응용 프로그램을 직접 호출 <br>
 클라이언트의 요청이 많아지면 급격히 성능이 저하됨 <br>
 (4/4) <br>
 > WAS 동적 웹 서비스를 담당하는 서버 <br>
 스레드 방식을 사용함<br>
  
 ============================================================<br>
 웹 서버와 웹 애플리케이션 서버(1/3)<br>
 > 웹서버 <br>
 클라이언트로 부터의 요청을 받고 결과를 전달하는 기능 <br>
 apache http server, IIS, Nginx <br>
 > http 프로토콜을 사용하여 클라이언트와 통신함 <br>
 http는 클라이언트와 웹 서버 간 웹문서 웹문서를 전송하기 위한 통신 규약 <br>
 웹 서버를 http 서버라고 함 <br>
 <br>
 (2/3)<br>
 >웹 서버의 구체적 기능 <br>
 클라이언트가 요청한 웹 문서를 찾아 전달 <br>
 클라이언트 요청에 대한 기본적 사용자 인증을 처리 <br>
 문제가 있으면 정해진 코드 값으로 응답 <br>
 프로그램 실행 요청이 있으면 처리 후 그 결과를 전달 <br>
 <br>
 (3/3)<br>
 >웹 애플리케이션 서버 <br>
 서버의 성능을 개선하기 위해 웹 서버의 기능을 분리 <br>
 웹 서비스의 처리를 위해 동적 페이지를 만들거나 비즈니스 로직을 처리 <br>
 ================================================================<br>
 서블릿 프로그램(1/2)<br>
 >서블릿 <br>
 server + applet 의 합성어 <br> 
 웹페이지를 동적으로 생성하기 위한 서버측 java클래스 <br> 
 java 언어에 기초한 웹 프로그램의 개발 기술 <br>
 >java 언어로 서블릿 클래스를 만들고, 컴파일된 바이트 코드를 서버에 탐재하여 웹 서비스를 제공 <br>
 소스를 수정하면 다시 컴파일하여 서버에 탐재해야함 <br>
 
================================================================<br>
jsp(1/2)<br>
javaserver pages<br>
>서블릿 대신에 사용할 수있는 스크립트 형식의 언어 <br>
html 페이지 내에 삽입됨 <br>
>jsp 페이지는 서블릿으로 변환됨<br>
웹 애플리케이션 서버가 자동으로 jsp 페이지를 변환하고 컴파일하여 웹서비스를 제공함 <br>
>java ee를 구성하는 기술 중의 하나 <br>
jsp(2/2)<br>
특징 <br>
>스크립트 언어로 html 페이지에 삽입됨 <br>
java 언어의 특성을 활용 <br>
표현언어, 표현식, 액션태그등의 스크립트적 요소를 제공 <br>
다양한 개발 환경이 오픈소스로 제공됨 <br>
jsp는 오픈 소스 형태로 운영되므로 다양한 기술이 지원됨 <br>
jsp 기술은 플랫폼에 독립적 <br>
반면에.net 기술은 개발과 운용 환경에 제약이 있음 <br>
=================================================================<br>
웹 컨테이너(1/2)<br>
웹 컴포넌트를 저장하고 서블릿의 생명주기를 관리 <br>
클라이언트의 서블릿 요청을 실행시키는 역할<br>
서블릿 컨테이너라고도 함<br>
java로 구현된 서블릿 엔진(서블릿 실행 환경) <br>
jsp를 서블릿으로 변환하는 기능을 포함 <br>
tomcat, wildFly, WebLogic, WebSphere, JBoss 등 <br>
(2/2)<br>
>웹 서버에서 서블릿이 실행되기 위한 환경 <br>
웹 서버 <br>
자바 실행환경 (JDK)<br>
서블릿 컨테이너  (예:tomcat)<br>
>jsp 컨테이너 <br>
jsp 페이지를 서블릿 프로그램으로 변환 <br>
대부분의 서블릿 컨테이너는 jsp 컨테이너 기능을 포함 <br>
jsp 컨테이너 자체가 서블릿으로 구현되어 있음 서블릿 컨테이너에 의해 실행됨 <br>
====================================================================<br>
http 프로토콜의 이해 <br>
> http 프로토콜 <br>
웹 서버와 클라이언트가 통신하는 규약 > TCP 포로토콜에 기초한 애플리케이션 계층 프로토콜 <br>
>connection oriented & stateless 특성 <br>
요청을 위해 접속을 해야함 <br>
서버가 응답한 후에 서버는 클라이언트의 상태를 유지하지 않음 <br>
웹 서버의 부담이 줄어드나 상태 관리를 위해 쿠키나 세션등이 필요 <br>
>http 요청과 응답 절차 <br>
연결 설정, 요청메시지 전송, 응답 메시지 전송, 연결 끊기 <br>
======================================================================<br>
http 요청 메시지 구조(1/2)<br>
시작 라인 > 요청 방식, URI, 버전 번호 <br>
GET: 웹 서버에게 요청 대상에 대해 처리 방식을 지정 <br>
/index.html : 서버에 존재하는 파일의 URI <br>
HTTP/1.1 : HTTP 의 버전 <br>
<br>
HTTP 요청 메시지 구조(2/2)<br>
>요청 헤더 > 1.한라인에 하나씩 헤더 정보를 기술 2.각라인은 헤더필드이름:값 형식으로 구성됨 3.요청 헤더의 끝에 공백 라인을 둠<br>
>요청 메시지의 몸체 > 1.POST 요청 방식에서만 의미 있음 2.HTML 폼에서 작성한 데이터를 POST 방식으로 전송할 때 사용됨 <br>
======================================================================<br>
http 응답 메시지(1/2)<br>
시작 라인, 응답헤더, 응답몸체로 구성됨<br>
시작라인은 http 버전, 서버의 응답코도, 설명으로 구성됨<br>
서버의 응답코드와 설명<br>
200 클라이언트 요청이 성공적으로 끝남 
400 잘못된 요청 <br>
401 인증오류 <br>
403 사용자 허가 모드 오류 <br>
404 요청한 문서가 존재하지 않음 <br>
405 요청한 방식을 지원하지 않음 <br>
500 서버에서의 실행 오류 <br>
503 일시적으로 요청을 처리할 수 없음 <br>



 

 
 
 
 
 
 
 
 

 

</body>
</html>