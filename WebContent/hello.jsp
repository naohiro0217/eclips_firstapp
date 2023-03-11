<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>はじめてのJSP</title>
</head>
<body>
<h1>こんにちは、From Java Server Pages!</h1>
<%
Calendar gcal = Calendar.getInstance();
/*  getInstance()でオブジェクトを作成  */
SimpleDateFormat format1 = new SimpleDateFormat("Gyyyy年 MM年 dd日(E)");
SimpleDateFormat format2 = new SimpleDateFormat("ahh時 mm分");

String string1 = format1.format(gcal.getTime());
String string2 = format2.format(gcal.getTime());

out.println("本日の日付:" + string1 + "</br>現在の時刻:" + string2);
/* Systemはつけない */
%>

</body>
</html>