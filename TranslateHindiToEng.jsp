<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 
<%@ page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Locale"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html;charset=UTF-8"%>
<%! String sesFile;%>
<%
if((String)session.getAttribute("username")!=null)
{
 sesFile=(String)session.getAttribute("username");
 }
else
{
response.sendRedirect("login.html");
} 
request.setCharacterEncoding("UTF-8");
String fName=request.getParameter("filename");
String fpath="C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\"+sesFile;
String data=request.getParameter("id_1");
//out.println("<pre>"+data+"</pre>");
try
{
OutputStream hindiWriter1=new FileOutputStream(new File(fpath,"hindi"));
OutputStreamWriter hindiWriter2=new OutputStreamWriter(hindiWriter1,"UTF-8");
Writer hindiWriter3=new BufferedWriter(hindiWriter2);
char buffer[]=new char[data.length()];
data.getChars(0,data.length(),buffer,0);
for(int h=0;h<buffer.length;h++)
{
hindiWriter3.write(buffer[h]);
}
hindiWriter3.close();
}
catch(Exception e){
out.println("Error :"+e);
}
%>


<%! String builtinMethod[]; %>
<%builtinMethod=new String[100];%>
<%!
String keyMatch(String keystr)
{
 Locale locale=new Locale("hi","IN");
 Collator collator=Collator.getInstance(locale);
 int cmp;
 if((cmp=collator.compare(keystr.trim(),"दुगना"))==0)
 {
 builtinMethod[1]="double";
 return "double";
 }
 else if((cmp=collator.compare(keystr.trim(),"दुग्न"))==0)
 {
 builtinMethod[1]="double";
 return "double";
 }
 else if((cmp=collator.compare(keystr.trim(),"दोगुना"))==0)
 {
 builtinMethod[1]="double";
 return "double";
 }
 else if((cmp=collator.compare(keystr.trim(),"तोर"))==0)
 {
  builtinMethod[2]="break";
  return "break";
 }
 else if((cmp=collator.compare(keystr.trim(),"तोर"))==0)
 {
  builtinMethod[2]="break";
  return "break";
 }
 else if((cmp=collator.compare(keystr.trim(),"तोडो"))==0)
 {
  builtinMethod[2]="break";
  return "break";
 }
 else if((cmp=collator.compare(keystr.trim(),"टोरो"))==0)
 {
  builtinMethod[2]="break";
  return "break";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुर्नान्क"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुर्ननक"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुन्नआन्क"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुर्नन्क"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुरनान्क"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 if((cmp=collator.compare(keystr.trim(),"पुर्न्नन्क"))==0)
 {
  builtinMethod[2]="int";
  return "int";
 }
 else if((cmp=collator.compare(keystr.trim(),"स्वन्त्रत"))==0)
 {
  builtinMethod[2]="auto";
  return "auto";
 }
 else if((cmp=collator.compare(keystr.trim(),"स्वन्तन्त्र"))==0)
 {
  builtinMethod[2]="auto";
  return "auto";
 }
 else  if((cmp=collator.compare(keystr.trim(),"स्व्तन्त्र"))==0)
 {
  builtinMethod[2]="auto";
  return "auto";
 }
 else if((cmp=collator.compare(keystr.trim(),"स्व्त्न्त्र"))==0)
 {
  builtinMethod[2]="auto";
  return "auto";
 }
 else if((cmp=collator.compare(keystr.trim(),"सवतन्तर"))==0)
 {
  builtinMethod[2]="auto";
  return "auto";
 }
 else if((cmp=collator.compare(keystr.trim(),"अन्यथा"))==0)
 {
  builtinMethod[2]="else";
  return "else";
 }
 else if((cmp=collator.compare(keystr.trim(),"अनयथा"))==0)
 {
  builtinMethod[2]="else";
  return "else";
 }
 else if((cmp=collator.compare(keystr.trim(),"अन्याथा"))==0)
 {
  builtinMethod[2]="else";
  return "else";
 }
 else if((cmp=collator.compare(keystr.trim(),"यदि"))==0)
 {
  builtinMethod[2]="if";
  return "if";
 }
 else if((cmp=collator.compare(keystr.trim(),"यदी"))==0)
 {
  builtinMethod[2]="if";
  return "if";
 }
 else if((cmp=collator.compare(keystr.trim(),"य्दि"))==0)
 {
  builtinMethod[2]="if";
  return "if";
 }
 else if((cmp=collator.compare(keystr.trim(),"स्थिर"))==0)
 {
  builtinMethod[2]="static";
  return "static";
 }
 else if((cmp=collator.compare(keystr.trim(),"इश्थिर"))==0)
 {
  builtinMethod[2]="static";
  return "static";
 }
 else if((cmp=collator.compare(keystr.trim(),"इसथिर"))==0)
 {
  builtinMethod[2]="static";
  return "static";
 }
 else if((cmp=collator.compare(keystr.trim(),"सरन्चना"))==0)
 {
  builtinMethod[2]="struct";
  return "struct";
 }
 else  if((cmp=collator.compare(keystr.trim(),"सर्न्च्ना"))==0)
 {
  builtinMethod[2]="struct";
  return "struct";
 }
 else if((cmp=collator.compare(keystr.trim(),"स्रन्च्ना"))==0)
 {
  builtinMethod[2]="struct";
  return "struct";
 }
 else if((cmp=collator.compare(keystr.trim(),"मामाला"))==0)
 {
  builtinMethod[2]="case";
  return "case";
 }
 else if((cmp=collator.compare(keystr.trim(),"ममाला"))==0)
 {
  builtinMethod[2]="case";
  return "case";
 }
 else if((cmp=collator.compare(keystr.trim(),"मामला"))==0)
 {
  builtinMethod[2]="case";
  return "case";
 }
 else if((cmp=collator.compare(keystr.trim(),"पुर्नान्क_अधारित"))==0)
 {
  builtinMethod[2]="enum";
  return "enum";
 }
 else if((cmp=collator.compare(keystr.trim(),"दिर्घ"))==0)
 {
  builtinMethod[2]="long";
  return "long";
 }
 else if((cmp=collator.compare(keystr.trim(),"दिरघ"))==0)
 {
  builtinMethod[2]="long";
  return "long";
 }
 else if((cmp=collator.compare(keystr.trim(),"दीर्घ"))==0)
 {
  builtinMethod[2]="long";
  return "long";
 }
 else if((cmp=collator.compare(keystr.trim(),"दीरघ"))==0)
 {
  builtinMethod[2]="long";
  return "long";
 }
 else if((cmp=collator.compare(keystr.trim(),"बद्लना"))==0)
 {
  builtinMethod[2]="switch";
  return "switch";
 }
  else if((cmp=collator.compare(keystr.trim(),"ब्द्ल्ना"))==0)
 {
  builtinMethod[2]="switch";
  return "switch";
 }
 else if((cmp=collator.compare(keystr.trim(),"बद्ल्ना"))==0)
 {
  builtinMethod[2]="switch";
  return "switch";
 } 
 else if((cmp=collator.compare(keystr.trim(),"बदलना"))==0)
 {
  builtinMethod[2]="switch";
  return "switch";
 } 
 else if((cmp=collator.compare(keystr.trim(),"अक्षर"))==0)
 {
  builtinMethod[2]="char";
  return "char";
 }
  else if((cmp=collator.compare(keystr.trim(),"बाहरी"))==0)
 {
  builtinMethod[2]="extern";
  return "extern";
 }
 else if((cmp=collator.compare(keystr.trim(),"बाह्ररि"))==0)
 {
  builtinMethod[2]="extern";
  return "extern";
 }
  else if((cmp=collator.compare(keystr.trim(),"बाहरि"))==0)
 {
  builtinMethod[2]="extern";
  return "extern";
 }
 else if((cmp=collator.compare(keystr.trim(),"निकट"))==0)
 {
  builtinMethod[2]="near";
  return "near";
 }
  else if((cmp=collator.compare(keystr.trim(),"नीकट"))==0)
 {
  builtinMethod[2]="near";
  return "near";
 }
 
  else if((cmp=collator.compare(keystr.trim(),"प्रकारपरिभाषा"))==0)
 {
  builtinMethod[2]="typedef";
  return "typedef";
 }

 else if((cmp=collator.compare(keystr.trim()," प्रकारपरिभसा"))==0)
 {
  builtinMethod[2]="typedef";
  return "typedef";
 }
 else if((cmp=collator.compare(keystr.trim(),"जबतक"))==0)
 {
  builtinMethod[2]="while";
  return "while";
 }
 else if((cmp=collator.compare(keystr.trim(),"इसपरचले"))==0)
 {
  builtinMethod[2]="goto";
  return "goto";
 }
 else if((cmp=collator.compare(keystr.trim(),"करो"))==0)
 {
  builtinMethod[2]="do";
  return "do";
 }
 else if((cmp=collator.compare(keystr.trim(),"शुन्य"))==0)
 {
  builtinMethod[2]="void";
  return "void";
 }
 else if((cmp=collator.compare(keystr.trim(),"वास्ते"))==0)
 {
  builtinMethod[2]="for";
  return "for";
 }
  else if((cmp=collator.compare(keystr.trim(),"वस्ते"))==0)
 {
  builtinMethod[2]="for";
  return "for";
 }
  else if((cmp=collator.compare(keystr.trim(),"वासते"))==0)
 {
  builtinMethod[2]="for";
  return "for";
 }
 else if((cmp=collator.compare(keystr.trim(),"चुक"))==0)
 {
  builtinMethod[2]="default";
  return "default";
 }
 else if((cmp=collator.compare(keystr.trim(),"चिन्हित"))==0)
 {
  builtinMethod[2]="signed";
  return "signed";
 }
  else if((cmp=collator.compare(keystr.trim(),"चिनहित"))==0)
 {
  builtinMethod[2]="signed";
  return "signed";
 }
   else if((cmp=collator.compare(keystr.trim(),"चिन्हीत"))==0)
 {
  builtinMethod[2]="signed";
  return "signed";
 }
 else if((cmp=collator.compare(keystr.trim(),"वापसी"))==0)
 {
  builtinMethod[2]="return";
  return "return";
 }
 else if((cmp=collator.compare(keystr.trim(),"दूर"))==0)
 {
  builtinMethod[2]="far";
  return "far";
 }
 else if((cmp=collator.compare(keystr.trim(),"लगातार"))==0)
 {
  builtinMethod[2]="continue";
  return "continue";
 }
 else if((cmp=collator.compare(keystr.trim(),"संघ"))==0)
 {
  builtinMethod[2]="union";
  return "union";
 }
  else if((cmp=collator.compare(keystr.trim(),"सन्घ"))==0)
 {
  builtinMethod[2]="union";
  return "union";
 }
 else if((cmp=collator.compare(keystr.trim(),"सन्घ"))==0)
 {
  builtinMethod[2]="union";
  return "union";
 }
  else if((cmp=collator.compare(keystr.trim()," सण्घ"))==0)
 {
  builtinMethod[2]="union";
  return "union";
 }

 else if((cmp=collator.compare(keystr.trim(),"पंजिका"))==0)
 {
  builtinMethod[2]="register";
  return "register";
 }
  else if((cmp=collator.compare(keystr.trim(),"पन्जिक"))==0)
 {
  builtinMethod[2]="register";
  return "register";
 }
 else if((cmp=collator.compare(keystr.trim(),"पन्जिका"))==0)
 {
  builtinMethod[2]="register";
  return "register";
 }
 else if((cmp=collator.compare(keystr.trim(),"दिखाये"))==0)
 {
  builtinMethod[2]="printf";
  return "printf";
 }
  else if((cmp=collator.compare(keystr.trim(),"दिखये"))==0)
 {
  builtinMethod[2]="printf";
  return "printf";
 }
 else if((cmp=collator.compare(keystr.trim(),"मुख्य"))==0)
 {
  builtinMethod[2]="main";
  return "main";
 }
 else
 return null;
}
%>



<%!
String getEngString(String str)
{
  String name=null;
   for(int eh=0;eh<str.length();eh++)
    {
    char ch=str.charAt(eh);
    switch(ch)
    {
     case 'क':
     if(name==null)
     name="k";
     else
     name=name+"k";
     break;
     case 'ख':
     if(name==null)
     name="kh";
     else
     name=name+"kh";
     break;
    case 'ग':
    if(name==null)
    name="g";
    else
    name=name+"g";
    break;
    case 'घ':
    if(name==null)
    name="gh";
    else
    name=name+"gh";
    break;
    case 'च':
    if(name==null)
    name="ch";
    else
    name=name+"ch";
    break;  
    case 'ज':
    if(name==null)
    name="j";
    else
    name=name+"j";
    break;    
    case 'झ':
     if(name==null)
    name="jh";
    else
    name=name+"jh";
    break; 
    case 'त':
    if(name==null)
    name="t";
    else
    name=name+"t";
    break; 
    case 'ट':
    if(name==null)
    name="T";
    else
    name=name+"T";
    break;
    case 'ठ':
     if(name==null)
    name="Th";
    else
    name=name+"Th";
    break;
    case 'ड':
    if(name==null)
    name="D";
    else
    name=name+"D";
    break;
    case 'ढ':
    if(name==null)
    name="Dh";
    else
    name=name+"Dh";
    break; 
    case 'थ':
    if(name==null)
    name="th";
    else
    name=name+"th";
    break;
    case 'द':
     if(name==null)
    name="d";
    else
    name=name+"d";
    break;
    case 'ध':
    if(name==null)
    name="dh";
    else
    name=name+"dh";
    break;
     case 'न':
    if(name==null)
    name="n";
    else
    name=name+"n";
    break;
    case 'ण':
    if(name==null)
    name="N";
    else
    name=name+"N";
    break;
    case 'म':
    if(name==null)
    name="m";
    else
    name=name+"m";
    break;
    case 'भ':
    if(name==null)
    name="bh";
    else
    name=name+"bh";
    break;
    case 'ब':
    if(name==null)
    name="b";
    else
    name=name+"b";
    break;
    case 'फ':
    if(name==null)
    name="ph";
    else
    name=name+"ph";
    break;
    case 'प':
    if(name==null)
    name="p";
    else
    name=name+"p";
    break;
    
    case 'य':
    if(name==null)
    name="y";
    else
    name=name+"y";
    break;
    case 'र':
    if(name==null)
    name="r";
    else
    name=name+"r";
    break;
    case 'ल':
    if(name==null)
    name="l";
    else
    name=name+"l";
    break;
    case 'व':
    if(name==null)
    name="v";
    else
    name=name+"v";
    break;
    case 'श':
    if(name==null)
    name="sh";
    else
    name=name+"sh";
    break;
    case 'स':
    if(name==null)
    name="s";
    else
    name=name+"s";
    break;
    case 'ष':
    if(name==null)
    name="Sh";
    else
    name=name+"Sh";
    break;
    case 'ह':
    if(name==null)
    name="h";
    else
    name=name+"h";
    break;
    case 'अ':
    if(name==null)
    name="a";
    else
    name=name+"a";
    break;
    case 'आ':
    if(name==null)
    name="aa";
    else
    name=name+"aa";
    break;
    case 'इ':
    if(name==null)
    name="i";
    else
    name=name+"i";
    break;
    case 'ई':
    if(name==null)
    name="I";
    else
    name=name+"I";
    break;
    case 'उ':
     if(name==null)
    name="u";
    else   
    name=name+"u";
    break;
    case 'ऊ':
    if(name==null)
    name="U";
    else
    name=name+"U";
    break;
    case 'ए':
     if(name==null)
    name="e";
    else
    name=name+"e";
    break;
    case 'ऍ':
     if(name==null)
    name="E";
    else
    name=name+"E";
    break;
    case 'ओ':
     if(name==null)
    name="o";
    else
    name=name+"o";
    break;
    case 'ऑ':
    if(name==null)
    name="O";
    else
    name=name+"O";
    break;
    case 'ऋ':
    if(name==null)
    name="R";
    else
    name=name+"R";
    break;
    case 'ा':
    if(name==null)
    name="a";
    else
    name=name+"a";
    break;
    case 'ि':
    if(name==null)
    name="i";
    else
    name=name+"i";
    break;
    case 'ी':
    if(name==null)
    name="I";
    else
    name=name+"I";
    break;
    case 'ु':
    if(name==null)
    name="u";
    else
    name=name+"u";
    break;
    case 'ू':
    if(name==null)
    name="U";
    else
    name=name+"U";
    break;
    case 'े':
    if(name==null)
    name="e";
    else
    name=name+"e";
    break;
    case 'ै':
    if(name==null)
    name="E";
    else
    name=name+"E";
    break;
    case 'ो':
    if(name==null)
    name="o";
    else
    name=name+"o";
    break;
    case 'ॉ':
    if(name==null)
    name="O";
    else
    name=name+"O";
    break;
       
   }//end of switch
 }//end of for
 //out.println(name);
 return name;
}
%>






<pre><b>

<%

//modification here max


String kstr=null;
int i,j,len;
String keystr=null;
String keyWord=null;
j=0;
try{
Locale locale=new Locale("hi","IN");
Collator collator=Collator.getInstance(locale);
int cmp;
InputStream hindiread1=new FileInputStream(new File("C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\"+sesFile,"hindi"));
InputStreamReader hindiread2=new InputStreamReader(hindiread1,"UTF-8");
BufferedReader hindiread3=new BufferedReader(hindiread2);

 FileOutputStream engWriter3 = null;
 engWriter3=new FileOutputStream(new File("C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\"+sesFile,"english"));
String rtrstr=null;
int l;
while((kstr=hindiread3.readLine())!=null){
for(i=0;i<kstr.length();i++)
{ 
 if(kstr.charAt(i)=='ः')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+":";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+=":";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
  rtrstr+=":";
 } //if
 else if(kstr.charAt(i)==' ')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+" ";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+=" ";
  else
   rtrstr=" "; 
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 }//else if
 else if(kstr.charAt(i)==';')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+";";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
   rtrstr+=";";
  else
   rtrstr=";";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 }//else if
 else if(kstr.charAt(i)==',')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+",";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+=",";
  else
  rtrstr=",";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 }//else if
 else if(kstr.charAt(i)==':')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+":";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+=":";
  else
  rtrstr=":";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 } //else if
 else if(kstr.charAt(i)=='(') 
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"(";
  if(keyWord!=null)
  {
   if(kstr.charAt(i+1)=='\"')
   {
   j=i+1;
   while(kstr.charAt(i)!=')')
    i=i+1;
   if(((kstr.length())-1)==i){
     keyWord+=kstr.substring(j,i)+")";}
   else
   {
   if(kstr.charAt(i+1)==';'){
     keyWord+=kstr.substring(j,i)+");";
      i++;
     }
   else  if(kstr.charAt(i+1)=='{') {
     keyWord+=kstr.substring(j,i)+"){";
      i++;
     }
   else if(kstr.charAt(i+1)==' '){
     keyWord+=kstr.substring(j,i)+") ";
      i++;
     }
   }   
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
   {
    engWriter3.write(buffer[l]);
   }
  }//if
  else
     {
     byte buffer[]=keyWord.getBytes();
       for(l=0;l<buffer.length;l++)
        {
           engWriter3.write(buffer[l]);
        }
     }//else
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+="(";
  else
  rtrstr="(";
  if(kstr.charAt(i+1)=='\"')
  {
  j=i+1;
  while(kstr.charAt(i)!=';')
  i=i+1;
  rtrstr+=kstr.substring(j,i)+";";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  }//if
  else
  {
  j=i+1;
  //rtrstr+=kstr.substring(j,i)+";";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  }//else
  j=i+1;     
  }   
 }//else if
else if(kstr.charAt(i)==')')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+")";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
    rtrstr+=")";
  else
    rtrstr=")";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 }
 else  if(kstr.charAt(i)=='{')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"{";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr==null)
  rtrstr="{";
  else
  rtrstr+="{";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='}')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"}";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr==null)
  rtrstr="}";
  else
  rtrstr+="}";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='=')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
   {
   i++;
   keyWord=keyWord+"==";
   }
  else
   keyWord=keyWord+"=";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr==null)
  rtrstr="=";
  else
  rtrstr+="=";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='&')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null){
  if(kstr.charAt(i+1)=='=')
   {
   i++;
   keyWord=keyWord+"&=";
   }
  else if(kstr.charAt(i+1)=='&')
  {
   i++;
   keyWord=keyWord+"&&";
  }
  else
   keyWord=keyWord+"&";
  }
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
   {
   i++;
     rtrstr+="&=";
   }
  else if(kstr.charAt(i+1)=='|')
  {
   i++;
     rtrstr+="&&";
  }
  else
    rtrstr+="&";
  }
   else
     rtrstr="&";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }

  else if(kstr.charAt(i)=='|')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
   {
   i++;
   keyWord=keyWord+"|=";
   }
  else if(kstr.charAt(i+1)=='|')
  {
   i++;
   keyWord=keyWord+"||";
  }
  else
   keyWord=keyWord+"|";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
    i++;
    rtrstr+="|=";
  }
  else if(kstr.charAt(i+1)=='|')
  {
   i++;
    rtrstr+="||";
  }
  else
  rtrstr+="|";
  }
  else
   rtrstr="|";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='<')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"<";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  rtrstr+="<";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='>')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+">";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  {
  rtrstr+=">";
  }
  else
   rtrstr=">";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='^')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
   {
    i++;
   keyWord=keyWord+"^=";
   }
  else
   keyWord=keyWord+"^";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
   i++;
    rtrstr+="^=";
  }
  else
    rtrstr+="^";
  }
  else
    rtrstr="=";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='~')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
  {
   i++;
    keyWord=keyWord+"~=";
  }
  else
    keyWord=keyWord+"~";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
   i++;
    rtrstr+="~=";
  }
  else
    rtrstr+="~";
  }
  else
    rtrstr="~";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='}')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"}";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  rtrstr+="}";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='*')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
  {
    i++;
    keyWord=keyWord+"*=";
  }
  else
    keyWord=keyWord+"*";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
   i++;
   rtrstr+="*=";
  }
  else
   rtrstr+="*";
  }
  else
   rtrstr="*";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='/')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
  {
  keyWord=keyWord+"/=";
  i++;
  }
  else
  keyWord=keyWord+"/";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
  i++;
   rtrstr+="/=";
  }
  else
   rtrstr+="/";
  }
  else
   rtrstr="/";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='%')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='=')
  {
  i++;
  keyWord=keyWord+"%=";
  }
  else
   keyWord=keyWord+"%";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='=')
  {
   i++;
   rtrstr+="%=";
  }
  else
    rtrstr+="%=";
  }
  else
  rtrstr="%";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='+')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  {
  if(kstr.charAt(i+1)=='+')
  {
   i++;
   keyWord=keyWord+"++";
  }
  else if(kstr.charAt(i+1)=='=')
  {
   i++;
   keyWord=keyWord+"+=";
  }
  else
   keyWord=keyWord+"+";
  }
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='+')
  {
   i++;
    rtrstr+="++";
  }
  else if(kstr.charAt(i+1)=='=')
   {
    i++;
    rtrstr+="+=";
   }
  else
    rtrstr+="+"; 
  }
  else
   rtrstr="+";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
 else if(kstr.charAt(i)=='-')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
   {
    if(kstr.charAt(i+1)=='-')
    {
     i++;
     keyWord=keyWord+"--";
    }
    else  if(kstr.charAt(i+1)=='=')
    {
     keyWord=keyWord+"-=";
    i++;
    }
    else
     keyWord=keyWord+"-";
   }
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null){
  if(kstr.charAt(i+1)=='-')
  {
    i++;
    rtrstr+="--";
  }
  else if(kstr.charAt(i+1)=='=')
  {
    i++;
    rtrstr+="-=";
  }
  else
    rtrstr+="-"; 
  }
  else
   rtrstr="-";   
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='.')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+".";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+=".";
  else
  rtrstr=".";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
  else if(kstr.charAt(i)=='?')
 {
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"?";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+="?";
  else
  rtrstr="?";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
   j=i+1;     
  }
 }
}//first for
  keystr=kstr.substring(j,i);
  keyWord=keyMatch(keystr);
  if(keyWord!=null)
  keyWord=keyWord+"\n";
  
  if(keyWord!=null)
  {
  byte buffer[]=keyWord.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;
  }
  else
  {
  rtrstr=getEngString(keystr);
  if(rtrstr!=null)
  rtrstr+="\n";
  else
  rtrstr="\n";
  byte buffer[]=rtrstr.getBytes();
  for(l=0;l<buffer.length;l++)
  {
    engWriter3.write(buffer[l]);
  }
  j=i+1;     
  }//first else
  i=0;
  j=0;
 }//first while
}//try
catch(Exception e){}
%>
</b></pre>

    <%  
    try   
     {  
        String fileName=request.getParameter("filename");
        String cmd=null;
		String cmd1=null;
		String myDir="C:\\Users\\MAI\\Apache\\apache-tomcat-7.0.53\\webapps\\Hindi\\"+sesFile;
        if(fileName.length()!=0){
		   fileName=myDir+"\\exe\\"+fileName;
          cmd = "cmd /c gcc -o "+fileName+" -Wfatal-errors cfile.c 2> error";
		  cmd1="C:\\MinGW\\bin\\gcc -o"+fileName+" cfile.c";
          }
        else {
		 String cfn=myDir+"\\exe\\cObject";
          cmd = "cmd /c gcc -o cfn -Wfatal-errors cfile.c 2> error";
		  cmd1="C:\\MinGW\\bin\\gcc -o cfn cfile.c";
        }
        
        try
        {
         int engstr;
         FileInputStream tEnglish=new FileInputStream(new File(myDir,"english"));
         FileOutputStream cFile=new FileOutputStream(new File(myDir,"cfile.c"));
         String headerFile="#include<stdio.h>"+"\n";
         byte buffer[]=headerFile.getBytes();
         cFile.write(buffer);
         while((engstr=tEnglish.read())!=-1)
         {
            cFile.write(engstr);
         }
        cFile.close();
        tEnglish.close();
        }
        catch(Exception e){}
     if(cmd != null)  
     {  
     Process p = Runtime.getRuntime().exec(cmd, null, new java.io.File(myDir)); 
     try{
	 File errorfile=new File(myDir+"\\error");
	 if(p.waitFor()==0){
      if(errorfile.length()==0){
	     //Process p1=Runtime.getRuntime().exec(cmd1, null, new java.io.File(myDir));
         response.sendRedirect("download.jsp");
		 }
      else
         //response.sendRedirect("home.jsp");
		 out.println("not compiled");
       }
      }
      catch(Exception e){out.println(e);}
     }
     }
     catch (IOException e) {out.println(e);}  
       
     %>  
