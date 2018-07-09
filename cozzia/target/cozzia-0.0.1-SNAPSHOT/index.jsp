<%@ page import="easepal.model.base.SessionInfo" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML >
<html>
<head>
<title>COZZIA MASSAGE</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="">
<meta http-equiv="description" content="">


    <%
        SessionInfo sessionInfo = (SessionInfo) session.getAttribute("COZZIA_SESSION_INFO");
        if (sessionInfo != null) {
            request.getRequestDispatcher("jsp/index/index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    %>

<script language=JavaScript>
window.location="login.jsp"
</script>
</head>
<body >
	<h1>hello</h1>
</body>
</html>
