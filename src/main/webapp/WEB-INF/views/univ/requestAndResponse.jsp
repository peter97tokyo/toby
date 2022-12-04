<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
요청과 응답<br>
요청은 클라이언트가 웹서버에게 특정 페이지의 전송을 요구하는 것<br>
응답은 웹 서버가 클라이언트에게 결과를 전송해 주는 것<br>
>request와 response 객체<br>
1. 웹 컨테이너는 요청 정보를 서블릿에게 제공하기 위해 request객체를 만들어 서블릿의 서비스 메소드에 인자로 제공함<br>
2. 서블릿이 상태코드, 응답헤더, 몸체를 표현할 수 있도록 response 객체를 만들어 제공함<br>
===========================================================<br>
request 내장 객체<br>
클라이언트의 요청을 표현하는 jsp 내장객체 <br>
httpServletRequest 유형 <br>
>request 내장객체의 기능 <br>
1.클라이언트 서버 관련 정보 읽기<br>
2.클라이언트가 전송한 데이터(파라미터) 읽기<br>
3.클라이언트가 전송한 헤더, 쿠키 정보 읽기<br>
4.속성의 처리(데이터 공유)<br>
========================================================<br>
클라이언트 및 요청 관련 정보 읽기(1/2)<br>
>메서드 설명<br>
메서드|리턴타입|기능<br>
getReomteAddr()|String|클라이언트 컴퓨터의 IP주소를 리턴<br>
getContentLength()|Long|클라이언트가 전송한 요청 몸체의 길이를 리턴 길이를 알수없는 경우 -1을 리턴<br>
getCharacterEncoding()|String|클라이언트가 요청 몸체를 전송할 때 사용한 문자열 인코딩을 리턴<br>
getContentType()|String|클라이언트가 요청 몸체를 전송할때 사용한 문서 타입을 리턴<br>
getProtocol()|String|클라이언트가 요청에서 사용한 프로토콜을 리턴<br>
getMethod()|String|클라이언트가 데이터를 전송할 때 사용한 요청 방식을 리턴<br>
getRequestURI()|String|요청 URI<br>
getContextPath()|String|JSP 페이지가 속한 웹 애플리케이션의 경로를 리턴<br>
getServerName()|String|연결할 때 사용한 서버 주소를 리턴<br>
getServerPort()|int|연결할 때 사용된 서버의 포트 번호를 리턴<br>
==========================================================<br>
HTML 폼<br>
사용자가 데이터를 입력하기 위한 틀<br>
요청과 함께 서버로 데이터를 전송할 수 있음<br>
텍스트 필드, 체크박스, 라디오 버튼, 제출 버튼등의 요소를 포함<br>
> 폼과 request 객체<br>
1. 폼에 입력된 정보는 파라미터로 전송됨<br>
2. jsp 페이지에서는 request 객체를 이용하여 사용자가 보낸 데이터(파라미터)를 읽고 처리할 수 있음<br>
=============================================================<br>
요청 파라메터 읽기<br>
메서드 읽기<br>
메서드|리턴타입|기능<br>
getParameter(String name)|String|입력 폼을 통해 전송된 이름이 name인 파라미터 값을 리턴한다. 해당 이름이 없을 경우 null을 리턴<br>
getParameterValues(String name)|String[]|이름이name인 파라미터의 모든 값을 배열로 리턴한다. 해당 이름이 없을 경우 null을 리턴<br>
getParameterNames()|Enumeration|웹 브라우저가 전송한 파라미터의 이름을 리턴<br>
getParameterMap()|Map|웹 브라우저가 전송한 파라미터를 Map 형식으로 리턴 Map은 파라미터이름, 값 으로 구성됨<br>
============================================================<br>
>GET방식에 의한 요청<br>
1. get 요청은 특정 자원을 단순히 가져오는 것을 의미함<br>
가. 단순한 질의나 검색에 사용<br>
나. a 태그를 사용할 때 또는 form 태그에서 method 속성의 값이 get일 때 <br>
2. URL 뒤에 쿼리 문자열을 붙여 요청함<br>
3. 길이에 제한(4k 이하)이 있으며 보안에 취약<br>
가. 중요 데이터를 전달할 때 사용하지 말것<br>
4. 파라미터를 포함한 북마크가 가능<br>
>POST방식에 의한 요청<br>
1. http 메시지의 몸체에 데이터를 전달<br>
2. form 태그에서 method 속성의 값이 반드시 post 이어야 함<br>
3. 길이에 제한이 없으며 보안이 상대적으로 유리함<br>
가. 게시글을 포스팅할 때<br>
나. 암호나 신용카드 정보를 보낼 때<br>
4. 브라우저 히스토리에 남지 않으며 북마크가 불가능<br>
============================================================<br>
method 설명<br>
메서드|리턴타입|기능<br>
getHeader(String name)|String|지정한 이름의 헤더 값을 리턴<br>
getHeaders(String name)|Enumeration|지정한 이름의 모든 헤더 값을 리턴<br>
getHeaderNames()|Enumeration|모든 헤더의 이름을 리턴<br>
getIntHeader()|int|지정한 헤더의 값을 정수로 리턴<br>
getDateHeader(String name)|long|지정한 헤더의 값을 시간 값으로 리턴. 이때 시간은 1970년 1월1일 이후로 흘러간 1/1000초 단위의 값을 가짐<br>
==========================================================<br>
response 내장 객체<br>
클라이언트에게 응답을 제공하기 위해 httpServletResponse 인터페이스를 구현한 객체<br>
>response 내장 객체의 기능<br>
1. 응답 헤더 정보 설정하기 - setHeader()<br>
2. 다른 페이지로 강제 이동 시키기 - sendRedirect()<br>
3. 쿠키 추가 - addCookie()<br>
4. 상태 코드 설정하기 - setStatus()<br>
5. 응답 몸체를 만들기 위한 출력 스트림 객체 제공<br>
가.getWriter() 또는 getOutputStream()<br>
===========================================================<br>
메서드 설명<br>
메서드|리턴타입|기능<br>
addHeader(String name, String value)|void|name 헤더에 value를 값으로 추가<br>
addIntHeader(String name, int value)|void|name 헤더에 정수값 value를 추가<br>
setHeader(String name, String Value)|void|name 헤더의 값을 value로 변경<br>
setIntHeader(String name, int value)|void|name 헤더의 값을 정수 값 value로 변경<br>
containsHeader(String name)|boolean|이름이 name인 헤더를 포함하고 있을 경우 true, 그렇지 않을 경우 false를 리턴<br>
setContentType(String Type)|void|응답 문서의 형식(MIME)을 설정<br>
=================================================================<br>
응답 캐시의 사용 <br>
>서버에 요청을 하지 않고 캐시에 있는 데이터를 사용하여 응답하는 것<br>
1. 빠른 응답이 가능<br>
2. 서버 로드와 네트워크 사용의 감소<br>
3. 내용 변경이 없는 페이지는 캐시를 통해 빠른 응답을 제공할 수있음<br>
>내용 변경이 빈번한 사이트의 경우, 캐시가 적용되면 잘못된 결과를 응답으로 제공할 수 있음<br>
>헤더에서 캐시와 관련된 필드<br>
1. Cache-Control<br>
가. http 1.1에서 지원<br>
나. 브라우저가 응답을 캐시할 것인지를 지정<br>
다. no-cache로 지정하면 캐시에 있는 내용으로 응답을 제공하지 않음<br>
라. max-age=3600과 같이 초 단위로 설정할 수 있음<br>
Pragma<br>
http 1.0에서 지원<br>
=================================================================<br>
다른 페이지로 강제 이동시키기<br>
>response.sendRedirect(String localtion)<br>
1. 다른 페이지로 강제 이동시키기(redirect 기능)<br>
2. 웹 서버가 웹 브라우저에게 다른 페이지로 이동하라고 지시하는 것<br>
3. 요청에 대한 임시 응답이 일단 가고, 브라우저가 재차 URL을 요청을 하게 됨<br>
가. 상태 코드 302, 응답 헤더 Location에 이동될 URL이 들어 있음<br>
나. jsp:forward 와 차이가 있음 <br>
4. 이동 URL의 요청 데이터에 특수 문자나 한글이 있으면 인코딩이 필요함<br>
가. URLEncoder.encode(String s, "UTF-8")를 사용<br>







 

</body>
</html>