
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
1)JSP 기술 <br>
>jsp <br>
동적으로 웹 컨텐츠를 만들기 위한 기술 > 동적으로 웹페이지를 만드는 기술 <br>
서버 측 스크립트 언어 > 1.html 페이지 안에 자바 코드를 포함시킬 수 있음 2. 서블릿 코드를 작성하는 편리한 방법을 제공 <br>
>jsp 언어의 확장 메커니즘<br>
표현 언어 el의 사용 > 서버 측 객체나 데이터를 쉽게 사용하고 표현할 수 있음 <br>
jstl과 같은 태그 라이브러리의 사용 <br>
======================================================================<br>
2)jsp 문서 (1/2)<br>
> 템플릿 데이터 <br>
정적 데이터로 html이나 xml 형식의 텍스트<br>
응답 결과를 만들 때, 그대로 출력되는 텍스트 <br>
>jsp 요소 - 동적 데이터의 추가 <br>
jsp 태그로 표현되는 프로그래밍적 요소 <br>
적절한  java 코드로 번역되어 동적 컨텐츠가 만들어짐 <br>
<br>
(2/2)
페이징 지시어 와 자바 표현식 코드 
<%@page import="java.util.Date"%> 
<%
Date today = new Date();
out.println(today);
%>
<br>
========================================================================<br>
jsp 페이지의 실행 <br>
실습 : 웹 프로젝트 폴더를 만들지 않고 간단히 실행 결과만을 확인하기<br>
[톰캣설치폴더]\\webapps\\ROOT\\3-3.jsp<br>
=========================================================================<br>
jsp 요소<br>
jsp 페이지의 구성 요소 > 1.스크립트 요소 2. 지시어 3. 액션태그 4. 내장 객체 5. 표현언어 6. jstl과 사용자 정의 태그 7. 주석 <%-- 설명 --%><br>
=========================================================================<br>
스크립트 요소<br>
스크립트릿 > jsp 페이지에 삽입되는 java 코드 조각<br>
<% Date date = new Date(); %><br>
표현식 > 변수나 수식의 값을 출력할 때, jsp 페이지에 삽입하는 식 <br>
<%=date %><br>
선언 > jsp 코드에서 사용될 변수 또는 메서드의 선언문 <br>
<%! public int add(int a, int b){
	return a + b;
}
	%>
	<%=add(1, 2) %><br>
==========================================================================<br>
지시어(1/3)<br>
의미 > 1. jsp 페이지에 대한 설정 정보를 웹 컨테이너에 지시 2. jsp페이지의 번역과 실행과정에 사용되는 정보 <br>
(2/3)<br>
종류 <br>
> include > 1.jsp 페이지의 특정 영역에 다른 문서를 포함 2.번역과정에서 복사하여 삽입시킬 텍스트나 코드를 지정<br>
<%@ include file="include.html" %>
> page > jsp 페이지에 대한 정보를 지정 <br>
<%@page import="java.util.*"%> 
(3/3)<br>
> taglib > 1. jsp 페이지에서 사용할 태그 라이브러리를 선언함 2. 태그 라이브러리 위치와 접두어를 지정 <br>
예시 jstl <br>
===========================================================================<br>
내장 객체 <br>
>의미 > 자주 사용되는 기능을 jsp 컨테이너가 객체 형태로 제공한 것 > 묵시적으로 이미 정의되어 있는 변수(자바 객체)<br>
>내장 객체(implict object)의 사용 > 1.별도의 선언이나 초기화 없이 사용가능 2.요청 파라미터 읽어오기, 응답 결과 전송하기, 세션 처리하기, 웹 어플리케이션 정보 읽어오기 등<br>
내장 객체 예시 : request, response, session, application, out, page등 <br>
=============================================================================<br>
액션태그(1/2)<br>
액션태그의 의미<br>
>요청을 처리할 때, 특별한 기능을 수행하는 것<br>
>형식은 xml 태그와 같은 모양 1. 시작 태그 (접두어와 액션이름, 속성과 값), 몸체, 마감 태그 2.표준 액션 태그는 접두어로 jsp를 사용<br>
(2/2)<br>
<jsp:include page="include.html"></jsp:include> <!-- 동적 인클루드 --> <br>
=============================================================================<br>
표현언어<br>
의미 > 1. 데이터를 쉽게 다루기 위한 간단한 스크립트 언어 <br>
2. 형태를 $ {어트리뷰트 } 이며 값을 표현 > 1. 스크립트 요소(표현식 보다 사용하기 쉬움)<br>
3. 스크립트 요소 밖에서 사용 > 1.액션 태그의 속성 값을 설정하거나 템플릿 데이터 내부에서 값을 출력할 때 사용 2.표현 언어의 내장 객체나 jstl과 함께 사용 할수 있음  <br>
============================================================================<br>
jstl과 사용자 정의 태그<br>
jstl(jsp standard tag library) > 1. 자주 사용되는 기능을 태그로 만들어 쓸수 있음 <br>
2. jstl은 유용한 사용자 정의 태그들을 모아 표준화한 태그 모음 <br>
3. 조건문, 반복문과 같은 프로그래밍적 요소를 태그 형태로 사용할 수 있게 함 <br>

사용자 정의 태그 > 1. 사용자가 정의한 커스텀 태그 <br>
2. jsp 태그를 확장하기 위한 것 <br>
==============================================================================<br>
page 지시어 <br>
용도 > 1. jsp 페이지에 대한 정보를 지정하여 jsp 처리에 사용하게 함<br>
2. 사용할 스크립트 언어, 상속받을 클래스, import할 클래스, jsp가 생성하는 문서의 타입<br>
, 출력하는 버퍼 관련 속성, 사용할 에러 페이지등의 속성을 지정 <br>
<br>
--------------------------------------------------------------------------------------------------<br>
속성 		  |설명																			|기본값 <br>
autoFlush | true일 경우 버퍼가 차면 자동으로 버퍼를 비워 내용을 클라이언트에 보냄, false인경우 버퍼가 차면 예외 발생 | true <br>
contentType| 결과로 생성되는 응답의 종류(MIME 타입)와 사용 될 charset 정보를 설정						| text/html <br>
import	  | jsp 페이지에서 사용할 자바 클래스를 지정<br>
language  | jsp 페이지의 스크립트 요소에서 사용할 프로그래밍언어										| java<br>
session   | jsp 페이지에서 session 객체를 사용할 지의 여부를 지정 									| true<br>
buffer	  | jsp 페이지의 출력 버퍼 크기를 지정. none일 경우 버퍼를 사용하지 않음							| 8kb<br>
info	  | jsp 페이지에 대한 설명을 텍스트로 입력할 때 사용											| <br>
errorPage | jsp 페이지 실행 중 에러가 발생할 때 보여줄 페이지를 설정<br>
isErrorPage |  현재 페이지가 에러페이지인지의 여부를 지정, true이면 현재 페이지를 에러페이지로 사용, false이면 현재페이지를 사용x <br>
pageEncoding|  jsp 페이지 자신의 문자 인코딩을 지정												| <br>
isELIgonored|  표현 언어를 사용할 지를 지정 														|<br>
trimDirectiveWhitespaces | 생성되는 문서에서 불필요한 공백 문자를 제거할 지를 지정						| false <br>
----------------------------------------------------------------------------------------------------<br>
<br>
contentType 속성 <br>
jsp 페이지로부터 생성되는 응답 문서의 MIME 타입과 charset을 설정 <br>
MIME은 문서 형식에 관한 표준 > 1. 기본값은 text/html이며 text/xml, text/plain등이 있음<br>
2. 웹 서버가 응답 메시지를 전송할 때, 먼저 문서 종류에 대한 정보를 보냄 <br>
한글을 사용할 경우, 다음과 같이 문자 인코딩 방법을 지정<br>
&lt;%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%&gt;<br>
import 속성 <br>
JD에서 제공하는 클래스를 사용할 떄, 사용할 클래스를 명시함 <br>
trimDirectiveWhitespace > 1. 앞부분의 지시어로 인해 생기는 불필요한 줄바꿈 문자를 제거함 <br>
===================================================================================<br>



















</body>
</html>