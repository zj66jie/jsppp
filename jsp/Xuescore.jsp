<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#zong{
overflow: hidden;  /*多出来的隐藏掉*/
  background-color:aqua;
  position:relative;
     width: 1300px;
    height: 800px;
    top:-43px;
    left:0;
    right:0px;
    margin:auto;
   
} 
#zuo{
  background-color:#4d5e70;
  position:absolute;
    top:0px;
    left:0px;
   width: 200px;
    height: 800px; 

}
#zuo1{
  background-color:#4d5e70;
  position:absolute;
    top:50px;
    left:20px;
   width: 200px;
    height:750px; 

}
#you{
  background-color:cornsilk;
  position:absolute;
    top:0px;
    left:200px;
   width: 1100px;
    height: 800px; 

}
#you1{
  background-color:white;
  position:absolute;
    top:340px;
    left:0px;
   width: 1100px;
    height: 800px; 

}
#you11{
  background-color:#e3e8ee;
  position:absolute;
    top:0px;
    left:0px;
   width: 1100px;
    height: 30px; 

}
#you11x{
  
  position:absolute;
    top:50px;
    left:158px;
   width: 1100px;
    height: 600px; 

}
a{
text-decoration:none;
}
body{
    margin:0;
    background-color:#f2f7fa;
  
}
  
    </style>


</head>
<body>
<% String Stid = new String(request.getParameter("stid")); %>
<%@include file="header.jsp" %>
  <div id="zong" >
        

       <div id="zuo">
           <div id="zuo1">
           
           
           
           
                <a href="" style='font-famile:黑体;font-size:18px; color:white; '>个人信息：学生</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>用户名：<%=Stid%></a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                 <a href="XueShengmima.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>修改密码</a><br /><br />
                  <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                <a href="XueShenLogin.jsp" style='font-famile:宋体;font-size:18px; color:white; '>退出系统</a><br /><br />
               <a style='font-famile:宋体;font-size:18px; color:white; '>网上评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="cJiaoShi.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>教师列表</a><br /><br />
               <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Xuescore.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:#26a491; '>评教结果</a><br /><br />
            </div>
        </div>

        <div id="you">
        <img src="${pageContext.request.contextPath}/images/pingjiao.png " width="1111" height="353" >
        <div id="you1">
        <div id="you11">
        <table>
     <tr>
     <th width=120></th>
    <th width=100>老师</th>
    <th width=100>课程</th>
     <th width=100>第一题</th>
      <th width=100>第二题</th>
       <th width=100>第三题</th>
        <th width=100>第四题</th>
        <th width=100>第五题</th>
    <th width=100>总分</th>
    </tr>
      </table>
     </div>
     <div id="you11x">
        <%
	
//连接数据库操作
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/keshe";
	String usename = "keshe";
	String psw= "root";  
    Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接  
    ResultSet rs=null;
    Statement Stmt=null;
		String sql="select xingming,kecheng,one,two,three,four,five,score from sjscore where name='"+Stid+"'";
		//out.println("sql="+sql);
	    Stmt=conn.createStatement();
		 rs=Stmt.executeQuery(sql);
		//out . print("<img src="${pageContext.request.contextPath}/img/Headerbg.jpg" width="1000" height="215"> ");				


while(rs.next()){
	%>

<table>
<tr >
<td width=100 height=30><%=rs.getString(1)%></td>
<td width=100><%=rs.getString(2)%> </td>
<td width=100><%=rs.getString(3)%></td>
<td width=100><%=rs.getString(4)%> </td>
<td width=100><%=rs.getString(5)%></td>
<td width=100><%=rs.getString(6)%> </td>
<td width=100><%=rs.getString(7)%></td>
<td width=100><%=rs.getString(8)%></td>

</tr>

 </table>

<% 
}

%>

        </div>
           </div>
        </div>  
    </div>



</body>
</html>