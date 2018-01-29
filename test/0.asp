<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>JavaScript 图片滑动切换效果</title>
<script src="../js/SlideTrans.js"></script>
</head>
<body>
<script>
new SlideTrans("idContainer", "idSlider", 3, { Vertical: false }).Run();
</script>
<style type="text/css"> 
.container, .container img{width:280px; height:200px;}
.container img{border:0;vertical-align:top;}

.container ul, .container li{list-style:none;margin:0;padding:0;}

.num{ position:absolute; right:5px; bottom:5px; font:12px/1.5 tahoma, arial; height:18px;}
.num li{
	float: left;
	color: #d94b01;
	text-align: center;
	line-height: 16px;
	width: 16px;
	height: 16px;
	font-family: Arial;
	font-size: 11px;
	cursor: pointer;
	margin-left: 3px;
	border: 1px solid #f47500;
	background-color: #fcf2cf;
}
.num li.on{
	line-height: 18px;
	width: 18px;
	height: 18px;
	font-size: 14px;
	margin-top:-2px;
	background-color: #ff9415;
	font-weight: bold;
	color:#FFF;
}
</style>
<div class="container" id="idContainer2">
	<ul id="idSlider2">
		<li><a href=""> <img src="http://images.cnblogs.com/cnblogs_com/cloudgamer/143727/r_song1.jpg"  /> </a></li>
		<li><a href=""> <img src="http://images.cnblogs.com/cnblogs_com/cloudgamer/143727/r_song2.jpg"  /> </a></li>
		<li><a href=""> <img src="http://images.cnblogs.com/cnblogs_com/cloudgamer/143727/r_song3.jpg"  /> </a></li>
		<li><a href=""> <img src="http://images.cnblogs.com/cnblogs_com/cloudgamer/143727/r_song4.jpg"  /> </a></li>
		<li><a href=""> <img src="http://images.cnblogs.com/cnblogs_com/cloudgamer/143727/r_song5.jpg"  /> </a></li>
	</ul>
	<ul class="num" id="idNum">
	</ul>
</div>

<script>

var nums = [], timer, n = $$("idSlider2").getElementsByTagName("li").length,
	st = new SlideTrans("idContainer2", "idSlider2", n, {
		onStart: function(){//设置按钮样式
			forEach(nums, function(o, i){ o.className = st.Index == i ? "on" : ""; })
		}
	});
for(var i = 1; i <= n; AddNum(i++)){};
function AddNum(i){
	var num = $$("idNum").appendChild(document.createElement("li"));
	num.innerHTML = i--;
	num.onmouseover = function(){
		timer = setTimeout(function(){ num.className = "on"; st.Auto = false; st.Run(i); }, 200);
	}
	num.onmouseout = function(){ clearTimeout(timer); num.className = ""; st.Auto = true; st.Run(); }
	nums[i] = num;
}
st.Run();


</script>


</body>
</html>
