
<%
'-------------------------定义clearHTMLCode函数，清除从数据库里来的html纪录-------------
function clearHTMLCode(art_content) 
dim reg 
set reg = new RegExp 
reg.Pattern = "<[^>]*>" 
reg.Global = true 
clearHTMLCode = reg.Replace(art_content, "") 
end Function 
%> 

<!--------------------------------- 刷新页面缓冲  --------------------------------->
<%    Response.Expires = -1   
      Response.ExpiresAbsolute   =   Now()-1   
      Response.cachecontrol   =   "no-cache"
%>
<!-- #include file="conn.asp" --><head><title>编辑内容</title></head>


<style type="text/css">
<!--
.STYLE4 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE17 {	font-size: 24px;
	font-weight: bold;
	color: #FFFFFF;
	
}
#Layer50 {
	position:absolute;
	width:1157px;
	height:32px;
	z-index:2;
	left: 129px;
	top: 127px;
	background-image: url(../image/bg2.jpg);
}
.STYLE15 {
	font-size: 36px;
	color: #CC0000;
	font-weight: bold;
}
.STYLE16 {	font-size: 30px;
	color: #0033FF;
}
#Layer47 {	position:absolute;
	width:1160px;
	height:126px;
	z-index:1;
	left: 129px;
	top: 0px;
	background-image: url(../image/b6.jpg);
}
#Layer48 {
	position:absolute;
	width:664px;
	height:78px;
	z-index:1;
	left: 303px;
	top: 2px;
}
#Layer49 {	position:absolute;
	width:488px;
	height:85px;
	z-index:2;
	left: 554px;
	top: 39px;
}
.STYLE24 {	font-size: 18px;
	font-weight: bold;
	color: #FF00FF;
}
#Layer87 {	position:absolute;
	width:785px;
	height:38px;
	z-index:14;
	left: 206px;
	top: 85px;
}
.STYLE25 {font-size: 20px}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
#Layer1 {
	position:absolute;
	width:204px;
	height:409px;
	z-index:3;
	left: 1085px;
	top: 240px;
	background-image: url(../image/bg3.jpg);
}
#Layer2 {
	position:absolute;
	width:164px;
	height:23px;
	z-index:1;
	left: 0px;
	top: 25px;
}
.STYLE29 {font-size: 12px}
#Layer3 {
	position:absolute;
	width:198px;
	height:50px;
	z-index:2;
	left: 0px;
	top: -56px;
}
#Layer4 {
	position:absolute;
	width:204px;
	height:277px;
	
	z-index:5;
	top: 47px;
}
#Layer5 {
	position:absolute;
	width:115px;
	height:32px;
	z-index:4;
	left: 128px;
	top: 127px;
	background-image: url(../image/bg.gif);
}
#Layer6 {
	position:absolute;
	width:156px;
	height:500px;
	z-index:5;
	left: 141px;
	top: 175px;
	background-color: #dbdbdb;
}
#Layer7 {
	position:absolute;
	width:529px;
	height:29px;
	z-index:6;
	left: 250px;
	top: 174px;
}
#Layer8 {
	position:absolute;
	width:754px;
	height:737px;
	z-index:7;
	left: 329px;
	top: 232px;
}
#Layer9 {
	position:absolute;
	width:154px;
	height:51px;
	z-index:4;
	left: 2px;
	top: 3px;
	background-image: url(../image/bg01.gif);
	visibility: inherit;
}
#Layer10 {
	position:absolute;
	width:156px;
	height:447px;
	z-index:4;
	left: 0px;
	top: 52px;
	background-color: #dbdbdb;
	visibility: visible;
}
#Layer11 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:8;
}
#Layer12 {
	position:absolute;
	width:154px;
	height:225px;
	z-index:8;
	left: 0px;
	top: 11px;
}
#Layer13 {
	position:absolute;
	width:199px;
	height:21px;
	z-index:8;
	visibility: hidden;
}
#Layer14 {
	position:absolute;
	width:209px;
	height:27px;
	z-index:2;
	left: 155px;
	top: 0px;
	visibility: inherit;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
<body onLoad="MM_preloadImages('../image/qyjs1.gif','../image/jxzy1.gif','../image/kfzy1.gif','../image/yjdt1.gif','../image/jxdt2.gif')">
<div id="Layer50">
  <table width="1153" height="39" border="0" align="center">
    <tr>
      <td width="110"><div align="center"><span class="STYLE17"><a href="../index.html" target="_parent" class="STYLE17">主页</a></span></div></td>
      <td width="148"><div align="center"><span class="STYLE17"><a href="../7/kcjj.html" target="main1" class="STYLE17">课程简介</a></span></div></td>
      <td width="161"><div align="center"><span class="STYLE17"><a href="../8/syjj.asp" target="main1" class="STYLE17">实验简介</a></span></div></td>
      <td width="164"><div align="center"><span class="STYLE17"><a href="../8/zdnd.asp" target="main1" class="STYLE17">重点难点</a></span></div></td>
      <td width="166"><div align="center"><span class="STYLE17"><a href="../8/synr.asp" target="main1" class="STYLE17">实验室</a></span></div></td>
      <td width="166"><div align="center"><span class="STYLE17"><a href="../6/index.asp" target="main1" class="STYLE17">在线服务</a></span></div></td>
      <td width="214"><div align="center"><span class="STYLE17"><a href="../7/syscy.asp" target="main1" class="STYLE17">实验室成员</a></span></div></td>
    </tr>
  </table>
</div>
<div id="Layer47">
  <div class="STYLE15" id="Layer48">南京师范大学移动教学网</div>
  <div class="STYLE16" id="Layer49">----高频电子线路</div>
  <div class="STYLE24" id="Layer87">
    <table width="782" height="31" border="0">
      <tr>
        <td><marquee style="color:#cc0066" scrollamount="2">
          <span class="STYLE25">欢迎大家为移动教学网的建设建言献策........ </span>
        </marquee></td>
      </tr>
    </table>
  </div>
</div>
<div id="Layer1">
  <div id="Layer2">
    <form id="form1" name="form1" method="post" action="">
      <label>
        <select name="select" size="1" onChange="MM_jumpMenu('parent',this,0)">
          <option value="http://wxy.njnu.edu.cn/" target="_blank">文学院</option>
          <option value="http://xinchuan.njnu.edu.cn/" target="_blank">新闻与传播学院</option>
          <option value="http://spa.njnu.edu.cn/" target="_blank">公共管理学院</option>
          <option value="http://202.119.104.33/" target="_blank">法学院</option>
          <option value="http://sxy.njnu.edu.cn/" target="_blank">商学院</option>
          <option value="http://jky.njnu.edu.cn/" target="_blank">教育科学学院</option>
          <option value="http://wy.njnu.edu.cn/" target="_blank">外国语学院</option>
          <option value=" http://sfy.njnu.edu.cn/" target="_blank">社会发展学院</option>
          <option value="http://math.njnu.edu.cn/" target="_blank">数学科学学院</option>
          <option value="http://physics.njnu.edu.cn/" target="_blank">物理科学与技术学院</option>
          <option value="http://hky.njnu.edu.cn/" target="_blank">化学与材料科学学院</option>
          <option value="http://sky.njnu.edu.cn/index.asp" target="_blank">生命科学学院</option>
          <option value="http://dky.njnu.edu.cn/" target="_blank">地理科学学院</option>
          <option value="http://music.njnu.edu.cn/" target="_blank">音乐学院</option>
          <option value="http://tky.njnu.edu.cn/" target="_blank">体育科学学院</option>
          <option value="http://msxy.njnu.edu.cn/" target="_blank">美术学院</option>
          <option value="http://ginling.njnu.edu.cn/" target="_blank">金陵女子学院</option>
          <option value="http://d.njnu.edu.cn/indexww.php" target="_blank">电气与自动化工程学院</option>
          <option value="http://dy.njnu.edu.cn/" target="_blank">能源与机械工程学院</option>
          <option value="http://jsjyxy.njnu.edu.cn/" target="_blank">教师教育学院</option>
          <option value="http://www.lxnjnu.com/" target="_blank">国际文化教育学院</option>
          <option value="http://computer.njnu.edu.cn/" target="_blank">计算机科学与技术学院</option>
          <option value="http://xlxy.njnu.edu.cn/" target="_blank">心理学院</option>
        </select>
      </label>
    </form>
  </div>
  <p class="STYLE29">南京师范大学各学院链接 </p>
  <div id="Layer4">
    <div id="l1"><a href="http://open.163.com/" target="_blank"><img src="../image/gkk.jpg" width="204" height="63" border="0" title="网易公开课" /></a> </div>
    <div id="l2"><a href="http://www.ec.js.edu.cn/" target="_blank"><img src="../image/jsjy.jpg" width="204" height="60" border="0" title="江苏教育" /></a></div>
    <div id="l3"><a href="http://bbs.njnu.edu.cn/" target="_blank"><img src="../image/yf.png" width="204" height="60" border="0" title="扬帆论坛" /></a></div>
    <div id="l4"><a href="http://www.people.com.cn/" target="_blank"><img src="../image/logo01.gif" width="204" height="60" border="0" title="人民网" /></a></div>
  </div>
  <div id="Layer3"><img src="../image/m1_clip.gif" width="200" height="51" /></div>
</div>
<div id="Layer6">
  <div id="Layer9">
    <div id="Layer14">当前位置：教学动态&gt;&gt;</div>
  </div>
  <p>&nbsp;</p>
  <div id="Layer12">
    <table width="110" height="270" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="../1/main.asp" target="main1" onClick="MM_nbGroup('down','group1','part1','../image/jxdt2.gif',1)" onMouseOver="MM_nbGroup('over','part1','','',1)" onMouseOut="MM_nbGroup('out')"><img src="../image/jxdt1.gif" alt="" name="part1" border="0" id="part1" onload="" /></a></td>
      </tr>
      <tr>
        <td><a href="../2/main.asp" target="main1" onClick="MM_nbGroup('down','group1','part2','../image/qyjs2.gif',1)" onMouseOver="MM_nbGroup('over','part2','','',1)" onMouseOut="MM_nbGroup('out')"><img name="part2" src="../image/qyjs2.gif" border="0" alt="" onload="MM_nbGroup('init','group1','part2','../image/qyjs1.gif',1)" /></a></td>
      </tr>
      <tr>
        <td><a href="../3/main.asp" target="main1" onClick="MM_nbGroup('down','group1','part3','../image/jxzy2.gif',1)" onMouseOver="MM_nbGroup('over','part3','','',1)" onMouseOut="MM_nbGroup('out')"><img name="part3" src="../image/jxzy2.gif" border="0" alt="" onload="MM_nbGroup('init','group1','part3','../image/jxzy1.gif',1)" /></a></td>
      </tr>
      <tr>
        <td><a href="../4/main.asp" target="main1" onClick="MM_nbGroup('down','group1','part4','../image/kfzy2.gif',1)" onMouseOver="MM_nbGroup('over','part4','','',1)" onMouseOut="MM_nbGroup('out')"><img name="part4" src="../image/kfzy2.gif" border="0" alt="" onload="MM_nbGroup('init','group1','part4','../image/kfzy1.gif',1)" /></a></td>
      </tr>
      <tr>
        <td><a href="../5/main.asp" target="main1" onClick="MM_nbGroup('down','group1','part5','../image/yjdt2.gif',1)" onMouseOver="MM_nbGroup('over','part5','','',1)" onMouseOut="MM_nbGroup('out')"><img name="part5" src="../image/yjdt2.gif" border="0" alt="" onload="MM_nbGroup('init','group1','part5','../image/yjdt1.gif',1)" /></a></td>
      </tr>
    </table>
  </div>
</div>
<div id="Layer8">
  <form name="form2" method="post" action="add.asp">
    <table width="753" height="546" border="0">
      <tr>
        <td width="80" height="39">题目：</td>
        <td width="635"><label>
          <input name="title" type="text" id="title" size="60">
          <input type="submit" name="Submit" value="提交">
          <input type="reset" name="Submit2" value="重置">
        </label></td>
      </tr>
      <tr>
        <td height="34">发表时间：</td>
        <td><label>
        <input name="time1" type="text" id="time1" size="50" >
        </label></td>
      </tr>
      <tr>
        <td height="43">来源：</td>
        <td><label>
          <input name="source" type="text" id="source" size="50">
        </label></td>
      </tr>
      <tr>
        <td>段1：</td>
        <td><label>
          <textarea name="content1" cols="90" rows="30" id="content1"></textarea>
        </label></td>
      </tr>
    </table>
  </form>
</div>
