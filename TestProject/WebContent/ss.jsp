<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<html>
<head>
<script type="text/javascript">
function loadfn()
{
	getDataForm.submit();
}
	
</script>
</head>
<body>

<%
String nm = "";
String pc = "";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost/manager","root", "mysql");
Statement st=con.createStatement();
String sql = "select * from product where pid=1";
ResultSet rs = st.executeQuery(sql);
while(rs.next())
	{
		%><table><tr><td>PNAME</td><td><input type="text" name="pn" value=<%=rs.getString(1)%>></td></tr>
<tr><td>PRICE</td><td><input type="text" name="pr" value=<%=rs.getString(2)%>></td></tr>
<tr><td><input type="submit" value="SUBMIT" ></td></tr></table><%		
}
}
catch(Exception e)
{
}
%>
<form method="post" name="getDataForm">
<table>
<tr>
<tr><td>PID</td><td><input type="text" name="pd" id="id"/>
<td><input type="button" value="load" onClick="loadfn()"/>
</table>
</form>

</body>
</html>

