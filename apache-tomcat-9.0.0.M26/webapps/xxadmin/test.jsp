<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<HTML>
<BODY>
<% 

String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/roledata?zeroDateTimeBehavior=convertToNull"; // 连接到 school 数据库 

String userid="root"; // 用户 
String passwd="123456"; // 密码 


try{
Class.forName(driver);
}
catch(Exception e){
out.println(" 无法载入 "+driver+" 驱动程序 !");
e.printStackTrace();
}


try {
Connection con=DriverManager.getConnection(url,userid,passwd);
if(!con.isClosed())
out.println(" 成功连接数据库 !");
con.close();
}
catch(SQLException SQLe){
out.println(" 无法连接数据库 !");
}

%>
</BODY>
</HTML>