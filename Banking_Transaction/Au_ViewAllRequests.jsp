<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Deposit Requests</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style12 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #000000}
.style10 {	color: #FF00FF;
	font-size: 15px;
}
.style11 {color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style14 {	font-size: 24px;
	color: #009900;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style87 {font-size: 14px}
.style87 {font-weight: bold; color: #FF00FF;}
.style94 {font-weight: bold; color: #FF00FF; font-size: 14px; }
.style95 {color: #000000; font-weight: bold; font-size: 14px; }
.style96 {color: #0000FF}
.style97 {	color: #6699FF;
	font-size: 14px;
	font-weight: bold;
}
.style98 {color: #FF00FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="AdminMain.jsp"><span>Home Page</span></a></li>
          <li><a href="index.html"><span>logout</span></a></li>
        </ul>
      </div>
     
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="sb_menu">
        <div class="gadget">
          <table width="544" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="536"><span class="style10 style14">View  All Deposit Requests and Approve..</span></td>
            </tr>
          </table>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="1131" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
   
              <td  width="129" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
              <td  width="147" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Bank Name</div></td>
              <td  width="149" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Account No </div></td>
              <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Amount</div></td>
			  <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date and Time</div></td>
			   <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">From</div></td>
              <td  width="251"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status(Send To Bank)</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from auditor_deposit "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);								
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);
					%>
            <tr>
            
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s1);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s2);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s3);%>
              </div></td>
              <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s4);%>
                Rs/- </div></td>
				
				 <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s6);%> </div></td>
				  
				   <td height="84" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s7);%> </div></td>
             
             
              <%
						if(s5.equalsIgnoreCase("No") )
						{
						
						%>
              <td valign="middle" height="84" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="AU_DepositMoneyStatus.jsp?uname=<%=s1%>&bank=<%=s2%>&acno=<%=s3%>&amount=<%=s4%>" class="style96 style30 style87"><strong> Send To Bank </strong></a></div>
              </div></td>
              <%
						
					}else if(s5.equalsIgnoreCase("Yes")){
						%>
             <td width="137" align="center"  valign="middle"><div align="center" class="style94">
                  <%out.println(s5);%>
              </div></td>
              <%}%>
            </tr>
            <%
						
						
					
				
					
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="1121" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="906"><div align="left">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p align="center"><a href="AuditorMain.jsp" class="style95">Back</a></p>
              </div></td>
            </tr>
          </table>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
<div class="fbg"></div>
  <div class="footer">
</body>
</html>
