<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
객체의 종류<br>
내장 객체 <br>
사용자 정의 객체 - JSP 페이지 내에서 선언하고 사용하는 객체<br>
1. 스크립트릿이나 선언에서 객체를 생성한 경우 <br>
2. jsp : useBean을 이용해 자바빈 객체를 생성한 경우<br> 
jsp:useBean id="userInfo" class=member.memberInfo /jsp:useBean <br>

jsp 내장 객체<br>
> JSP 컨테이너가 번역 과정에서 만들어서 제공<br>
1. JSP 페이지 안에서 묵시적으로 선언되어 있는 객체<br>
2. 선언이나 초기화 없이 사용할 수 있는 변수 <br>
3. 스크립트릿, 표현식, 표현 언어등에서 사용함<br>
====================================================================<br>
request |HttpServletRequest, ServletRequest 클라이언트의 요청 정보 관리(request 영역)<br>
response |HttpServletResponse, servletResponse 웹 서버의 응답 정보 관리 <br>
pageContext |PageContext JSP 페이지에 대한 정보 관리(page 영역)<br>
session |HttpSession HTTP 세션 정보 관리(session 영역) <br>
application |ServletContext 웹 애플리케이션에 대한 정보 관리 (application 영역) <br>
out |JspWriter 브라우저에게 보낼 컨텐츠를 출력할 때 사용되는 출력 스트림 <br>
config | ServletConfig JSP페이지에 대한 설정 정보 관리 <br>
page |Object JSP페이지를 구현한 자바 클래스의 인스턴스 <br>
exception |Throwable 에러 페이지 안에서 오류 메시지 출력 등의 예외 처리에 사용 <br>

====================================================================<br>
pageContext 내장 객체 (1/2)<br>
페이지 컨텍스트를 관리하는 객체 <br>
1.page를 표현하고 page 영역을 관리하는 객체<br>
2.페이지에서 사용되는 객체들의 레퍼런스를 저장하고 있음<br>
3.다른 내장 객체의 참조 값을 리턴하는 메소드를 제공 <br>
javax.servlet.jsp.PageContext의 인스턴스<br>
JSP 페이지에서 잘 사용하지 않음 <br>
(2/2)<br>
메서드 | 리턴타입 | 기능 <br>
getRequest() | ServletRequest | request 객체를 리턴 <br>
getResponse() | servletResponse | response 객체를 리턴 <br>
getSession() | HttpSession | session 객체를 리턴 <br>
getServletContext() | ServletContext | application 객체를 리턴 <br>
getServletConfig() | ServletConfig | config 객체를 리턴 <br>
getOut() | JspWriter | out 객체를 리턴 <br>
getException() | Exception | Exception 객체를 리턴 <br>
getPage() | Object | page를 리턴<br>
 =================================================================<br>
 application 내장 객체 <br>
 >웹 애플리케이션과 관련된 정보를 관리 <br>
 1. web.xml에 저장된 설정 정보의 조회<br>
 2. 웹 컨테이너의 정보 조회<br>
 3. 로그 메시지의 기록 <br>
 4. 웹 애프리케이션의 폴더 정보 조회<br>
 >application 영역을 관리하는 객체 <br>
 1. 서블릿 컨텍스트를 관리하는 객체 <br>
 2. 특정 웹 애플리케이션에 포함된 모든 jsp 페이지는 하나의 application 객체를 공유함<br>
 javax.servlet.ServletContext의 인스탄스<br>
 ===================================================================<br>
 application 객체와 설정 파일 (1/4)
 web.xml <br>
 웹 애플리케이션 내의 모든 JSP 페이지에서 공유되는 설정 정보를 저장 <br>
 1. 이클립스 동적 웹 프로젝트에서 ... \webapp\WEB-INF에 위치함 <br>
 (2/4)<br>
 >웹 애플리케이션의 초기 설정 정보 읽기 <br>
 메서드 | 리턴타입 | 기능<br> 
 getInitParamet(String name) | String | 이름이 name인 웹 애플리케이션 초기화 파라미터의 값을 읽음, 존재하지 않을 경우 null을 리턴 <br>
 getInitParameterNames() | Enumeration | 웹 애플리케이션 초기화 파라미터인 이름 목록을 리턴 <br> 
 2. context-param 태그를 이용하여 설정을 공유할 수 있음 <br>
 ======================================================================<br>
웹 컨테이너 정보를 읽기 위한 메서드(2/2) <br>
메서드 | 리턴 타입 | 기능 <br>
getServerInfo() | String | 서버의 정보를 리턴 <br>
getMajorVersion() | String | 서버가 지원하는 서블릿 규약의 버전 앞 번호를 리턴 <br>
getMinorVersion() | String | 서버가 지원하는 서블릿 규약의 버전 뒷 번호 <br>
웹 컨테이너 정보 : <%=application.getServerInfo() %><br>
서블릿 규약 버전 : <%=application.getMajorVersion() %><br>
 ===================================================================<br>
 out 내장 객체(1/2)<br>
 클라이언트로 보낼 컨텐츠를 작성하기 위해 사용하는 출력 스트림 <br>
 > JSP 페이지에서 데이터 출력 <br>
 1. JspWriter 유형의 out 객체를 이용함 <br>
 가. 서블릿 프로그램에서는 response.getWriter()를 이용하여 출력 <br>
 1. 서블릿 프로그램으로 변환될 때 <br>
 가. html 태그나 텍스트는 out.print(String)에 문자열로 전달됨<br>
 나. 표현식에서는 수식이 out.print(수식)에 인자로 전달됨<br>
 
 =================================================================<br>
 out 객체와 버퍼(1/3)<br>
 >out 객체의 출력 메소드 <br>
 print(인자), printIn(인자), printIn()<br>
 1. printIn()은 출력하고 줄을 바꿈 <br>
 newline()<br>
 1. 줄바꿈 문자를 출력 
 > out 객체와 버퍼링 <br>
 1. JSP 페이지의 실행 결과는 기본적으로 자동 버퍼링됨<br>
 가. page 지시어에서 buffer 속성의 기본 값은 '8kb'<br>
 2. 버퍼는 out 객체가 내부적으로 사용하는 버퍼임 <br>
 =================================================================<br>
 버퍼 관련 메소드 설명 <br>
 메서드 | 리턴 타입 | 기능 <br>
 getBufferSize() | int | 버퍼의 크기를 리턴 <br>
 getRemaining() | int | 현재 남아 있는 버퍼의 크기를 리턴<br>
 clear() | void | 버퍼의 내용을 비움 만약 버퍼가 비워져 있다면 IOException을 발생 <br>
 clearBuffer() | void | 버퍼의 내용을 비움 버퍼가 비워져 있더라도 IOException을 <br> 
 flush () | void | 버퍼의 내용을 비워 출력시킴 <br>
 isAutoFlush() | boolean | page 지시어에서 설정한 autoFlush 여부<br>
 버퍼 크기 : <%=out.getBufferSize() %> <br>
 남은 버퍼 크기 : <%=out.getRemaining() %><br>
 autoFlush 속성값 : <%=out.isAutoFlush() %><br>
 =============================================================<br>
 영역 <br>
 >JSP 페이지에서 객체들은 scope 속성을 가짐 <br>
 1. scope는 객체의 활동 영역 또는 객체의 사용범위를 의미<br>
 2. 영역을 표시하는 속성 값으로 page, request, session, application이 존재함 <br> 
 >같은 영역 내의 JSP 페이지들은 협력 작업을 위해 정보를 공유할 필요가 있음 <br>  
 1. 데이터 공유를 위해 영역을 표현하는 내장 객체가 존재함 <br>
 
============================================================<br>
page 영역과 request 영역 (1/2)<br>
>page 영역 <br>
1. 1개 JSP 페이지 내부 <br>
2. 클라이언트에게 응답을 보내거나 포워딩이 일어나면 없어짐 <br>
3. page 영역에 존재하는 객체 레퍼런스들은 pageContext 객체에 저장됨<br>

>request 영역 <br>
1. 같은 요청을 처리하는 페이지들로 이루어짐 <br>
가. jsp:forward 또는 jsp:include를 사용할 때 <br>
2. 요청의 처리가 끝나면 영역은 없어짐 <br>
가. 요청에 대한 응답이 이루어질 때 까지 유지됨 <br>
나. 요청이 1개의 JSP페이지에서 처리되면 page 영역과 request 영역은 동일함<br>
3. 영역의 정보는 requst 객체에 저장됨<br>
 
========================================================<br>
session 영역<br>
1. 같은 세션 내에서 일련의 요청을 처리하는 페이지들로 이루어짐 <br>
가. 세션은 하나의 웹 브라우저에서 유지됨<br>
나. 웹 브라우저가 실행되는 동안 요청처리에 사용된 모든 page 영역의 총합<br>
session 영역의 객체 레퍼런스는 session 객체에 저장됨 <br>
application 영역 <br>
1. 1개 웹 애플리케이션 전체 영역 <br>
가. 같은 애플리케이션 내의 페이지들 간에 공유하는 정보가 존재함 <br>
2. 웹 컨테이너를 다시 시작시키면 기존 영역이 없어진 후 다시 만들<br>
3. 영역의 정보는 application 객체에 저장됨 <br>
======================================================<br>
페이지 간 데이터 공유 <br>
> 데이터 공유 <br>
1. 영역을 표현하는 내장 객체를 이용하여 여러 JSP 페이지 사이에 데이터를 공유할 수 있음 <br>
2. 데이터 공유를 위해 영역을 관리하는 pageContext, request, session, applicaion 내장 객체는 속성을 관리함<br>
가. 정보를 주고받기 위해 새로운 속성을 정의하여 사용 <br>
3. 속성은 이름, 값의 형태 <br>
setAttribute (String name, Object value)<br>
속성 값 설정<br>
<% pageContext.setAttribute("name", "peter"); %> <br>
속성의 이름은 Stirng 유형 <br>
속성의 값은 다양한 유형의 객체 <br>
1. 기본 형의 값을 주어도 대응되는 Wrapper 클래스로 자동 형변환됨 <br>
속성 값 읽기 <br>
<%=pageContext.getAttribute("name") %> <br>
속성값은 오브젝트 유형으로 리턴됨<br>
속성 값을 읽을 때는 유형에 맞게 형변환을 해야함 <br>
기본 형의 경우는 대응되는 Wrapper 클래스를 사용 <br>
==========================================================<br>
영역 관련 내장 객체 (1/2)<br>
pageContext 객체 <br>
하나의 jsp 페이지에서 공유되는 데이터를 저장 <br>
request 객체 <br>
한번의 요청을 처리하기 위해 사용되는 JSP 페이지들에서 공유되는 데이터를 저장 <br>
session 객체 <br>
1. 세션이 유지되는 JSP 페이지들에서 공유되는 데이터를 저장 <br>
2. 웹 브라우저 단위로 데이터를 공유 <br>
3. 사용자의 로그인 정보를 유지할 때 사용함 <br>
application 객체 <br>
1. 웹 애플리케이션 내에서 공유되는 데이터를 저장 <br>
2. 웹 애플리케이션 설정 정보의 관리 <br>



 

</body>
</html>