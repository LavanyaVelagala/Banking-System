<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Agent_Login  Page</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style35 {color: #FF0000}
.style38 {color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="index.html"><span>logout</span></a></li>
        </ul>
      </div>
      
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"><span class="style13">Welcome To Agent Login.. </span></h2>
          <form id="form1" name="form1" method="post" action="AgentAuthentication.jsp" >
            <p>&nbsp;</p>
            <div class="clr"></div>
            <div class="post_content">
              <table width="570" border="0" align="left" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="185" align="center" valign="middle"><label for="email">
                      <div align="center"><span class="style38 style13">Select Agent Name</span></div>
                    </label></td>
                  <td><p align="left">
                      <select name="aname">
                        <option>Select</option>
                        <option>PayTM</option>
                        <option>Tez</option>
						<option>Xoom</option>
                        <option>BFC Forex</option>

                      </select>
                  </p></td>
                </tr>
               
                <tr>
                  <td height="46" align="center" valign="middle"><span class="style35">
                    <label for="label"> </label>
                    </span>
                      <label for="label">
                      <div align="center"><span class="style35"><strong>User Name (required)</strong></span></div>
                    </label>
                      <span class="style35">
                      <label for="name"></label>
                    </span></td>
                  <td width="371"><input id="name" name="username" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" align="center" valign="middle"><span class="style35">
                    <label for="email"> </label>
                    </span>
                      <label for="email">
                      <div align="center"><span class="style35"><strong>Password (required)</strong></span></div>
                    </label></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td height="47">&nbsp;</td>
                  <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" /></td>
                </tr>
              </table>
              <p>&nbsp;</p>
            </div>
            <div class="clr"></div>
            <p class="style12"><a href="AgentLogin.jsp" class="style13">Back</a></p>
          </form>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AgentLogin.jsp">Home</a></li>
            <li><a href="index.html">Logout</a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize"></div>
  </div>
  <div class="footer">
</body>
</html>
