<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 
<title>प्राकृतिक भाषा अंतराफलक</title>
<style>
body{
background-color:#9abcde;
}
#logout{
 position:absolute;
 right:25px;
 top:85px;
}
#keyword{
 position:absolute;
 left:10px;
 top:80px;
 width:auto;
 height:auto;
 margin:5px;
 padding:5px;
}
#titl
{
 position:absolute;
 top:0px;
 left:0px;
 right:0px;
 width:auto;
 height:auto;
 background-color:#ffffff;
 text-align:center;
 padding : 5px;
}
</style>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
</head>
<body>

<div id="titl">
 <h2>हिन्दी  भाषा  !</h2>
</div>
<div id="logout">
  <table  border="0">
  <tr>
     <td ><a href="home.jsp">Home</a></td>
     <td align="center"><a href="logout.jsp">LogOut</a></td>
  </tr>
  <tr>
    <td colspan="2" align="center">Hello <b> <% if((String)session.getAttribute("fullname")!=null) {out.print((String)session.getAttribute("fullname"));} else {out.print(" Friend");} %> </b></td>
  </tr>
  </table>
</div>
<div id="keyword">
<b>Keyword is :</b>
<pre><b>
 बद्लना 
 ब्द्ल्ना
 बद्ल्ना
 अक्षर
 बाहरी
 बाह्ररि
 बाहरि
 निकट
 नीकट 
 प्रकारपरिभाषा
 प्रकारपरिभसा
 जबतक
 इसपरचले
 करो
 शुन्य
 वास्ते
 वस्ते
 वासते
 चुक
 चिन्हित
 चिनहित
 चिन्हीत
 वापसी
 दूर
 लगातार
 संघ
 सन्घ
 सन्घ
 सण्घ
 पंजिका
 पन्जिक
 पन्जिका
 दिखाये
 दिखये
 मुख्य
 </b>
</pre>
</div>
</body>
</html>
