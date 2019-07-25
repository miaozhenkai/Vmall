//侧栏跳转
function CeLanTiaoZhuan(i) {
	var scroll_offset = $(i).offset(); //得到pos这个div层的offset，包含两个值，top和left
	$("body,html").animate({
		scrollTop: scroll_offset.top - 100 //让body的scrollTop等于pos的top，就实现了滚动
	}, 300);
}
//侧栏显隐
window.onscroll = function() {
	//得到手机高度2112
	var sj1top = document.getElementById("ShouJi").offsetTop;
	//得到笔记本高度
	var bjb2top = document.getElementById("BiJiBen").offsetTop;
	// //得到平板高度
	// var pb3top = document.getElementById("PingBan").offsetTop;
	//得到穿戴高度
	var cd4top = document.getElementById("zhinengchuandai").offsetTop;
	//得到家具高度
	var jj5top = document.getElementById("JiaJu").offsetTop;
	//得到热销配件高度
	var rxpj6top = document.getElementById("ReXiaoPeiJian").offsetTop;
	//得到品牌配件高度
	var pppj7top = document.getElementById("PinPaiPeiJian").offsetTop;
	//得到底部广告高度
	var adv2top = document.getElementById("adv2").offsetTop;
	var scrollTop = document.body.scrollTop || document.documentElement.scrollTop || 0;
	//判断滚动条
	if(scrollTop  < sj1top-200) {
		document.getElementById("celan").style.transform = "translateX(100%)";
	}
	if(scrollTop  > sj1top -200 && scrollTop < bjb2top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#333";
		document.getElementById("clbjb2").style.color = "#999";
		// document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#999";
		document.getElementById("cljj5").style.color = "#999";
		document.getElementById("clrxpj6").style.color = "#999";
		document.getElementById("clpppj7").style.color = "#999";
		$("#xiaohong1").slideDown(150);
		$("#xiaohong2").slideUp(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideUp(150);
		$("#xiaohong5").slideUp(150);
		$("#xiaohong6").slideUp(150);
		$("#xiaohong7").slideUp(150);
	}

	if(scrollTop > bjb2top - 150 && scrollTop < cd4top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#999";
		document.getElementById("clbjb2").style.color = "#333";
		//document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#999";
		document.getElementById("cljj5").style.color = "#999";
		document.getElementById("clrxpj6").style.color = "#999";
		document.getElementById("clpppj7").style.color = "#999";
		$("#xiaohong1").slideUp(150);
		$("#xiaohong2").slideDown(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideUp(150);
		$("#xiaohong5").slideUp(150);
		$("#xiaohong6").slideUp(150);
		$("#xiaohong7").slideUp(150);
	}
	// if(scrollTop > pb3top - 150 && scrollTop < cd4top - 150) {
		// document.getElementById("celan").style.transform = "translateX(-100%)";
		// document.getElementById("clsj1").style.color = "#999";
		// document.getElementById("clbjb2").style.color = "#999";
		// document.getElementById("clpb3").style.color = "#333";
		// document.getElementById("clcd4").style.color = "#999";
		// document.getElementById("cljj5").style.color = "#999";
		// document.getElementById("clrxpj6").style.color = "#999";
		// document.getElementById("clpppj7").style.color = "#999";
		// $("#xiaohong1").slideUp(150);
		// $("#xiaohong2").slideUp(150);
		// $("#xiaohong3").slideDown(150);
		// $("#xiaohong4").slideUp(150);
		// $("#xiaohong5").slideUp(150);
		// $("#xiaohong6").slideUp(150);
		// $("#xiaohong7").slideUp(150);
	//}
	if(scrollTop > cd4top - 150 && scrollTop < jj5top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#999";
		document.getElementById("clbjb2").style.color = "#999";
		//document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#333";
		document.getElementById("cljj5").style.color = "#999";
		document.getElementById("clrxpj6").style.color = "#999";
		document.getElementById("clpppj7").style.color = "#999";
		$("#xiaohong1").slideUp(150);
		$("#xiaohong2").slideUp(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideDown(150);
		$("#xiaohong5").slideUp(150);
		$("#xiaohong6").slideUp(150);
		$("#xiaohong7").slideUp(150);
	}
	if(scrollTop > jj5top - 150 && scrollTop < rxpj6top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#999";
		document.getElementById("clbjb2").style.color = "#999";
		//document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#999";
		document.getElementById("cljj5").style.color = "#333";
		document.getElementById("clrxpj6").style.color = "#999";
		document.getElementById("clpppj7").style.color = "#999";
		$("#xiaohong1").slideUp(150);
		$("#xiaohong2").slideUp(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideUp(150);
		$("#xiaohong5").slideDown(150);
		$("#xiaohong6").slideUp(150);
		$("#xiaohong7").slideUp(150);
	}
	if(scrollTop > rxpj6top - 150 && scrollTop < pppj7top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#999";
		document.getElementById("clbjb2").style.color = "#999";
		//document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#999";
		document.getElementById("cljj5").style.color = "#999";
		document.getElementById("clrxpj6").style.color = "#333";
		document.getElementById("clpppj7").style.color = "#999";
		$("#xiaohong1").slideUp(150);
		$("#xiaohong2").slideUp(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideUp(150);
		$("#xiaohong5").slideUp(150);
		$("#xiaohong6").slideDown(150);
		$("#xiaohong7").slideUp(150);
	}
	if(scrollTop > pppj7top - 150 && scrollTop < adv2top - 150) {
		document.getElementById("celan").style.transform = "translateX(-100%)";
		document.getElementById("clsj1").style.color = "#999";
		document.getElementById("clbjb2").style.color = "#999";
		//document.getElementById("clpb3").style.color = "#999";
		document.getElementById("clcd4").style.color = "#999";
		document.getElementById("cljj5").style.color = "#999";
		document.getElementById("clrxpj6").style.color = "#999";
		document.getElementById("clpppj7").style.color = "#333";
		$("#xiaohong1").slideUp(150);
		$("#xiaohong2").slideUp(150);
		$("#xiaohong3").slideUp(150);
		$("#xiaohong4").slideUp(150);
		$("#xiaohong5").slideUp(150);
		$("#xiaohong6").slideUp(150);
		$("#xiaohong7").slideDown(150);
	}
	if(scrollTop > adv2top - 600) {
		document.getElementById("celan").style.transform = "translateX(100%)";
	}
}

//侧栏字体变色
function clzbsOn(i) {
	document.getElementById(i).style.transition.duration="0.5s";
	document.getElementById(i).style.color="#333";
}
function clzbsOut(i) {
	var scrollTop = document.body.scrollTop || document.documentElement.scrollTop || 0;
	var sj1top = document.getElementById("ShouJi").offsetTop;
	var bjb2top = document.getElementById("BiJiBen").offsetTop;
	// var pb3top = document.getElementById("PingBan").offsetTop;
	var cd4top = document.getElementById("zhinengchuandai").offsetTop;
	var jj5top = document.getElementById("JiaJu").offsetTop;
	var rxpj6top = document.getElementById("ReXiaoPeiJian").offsetTop;
	var pppj7top = document.getElementById("PinPaiPeiJian").offsetTop;
	var adv2top = document.getElementById("adv2").offsetTop;
	var m;
	var n;
	if(i=="clsj1"){
		m=sj1top;
		n=bjb2top;
	}if(i=="clbjb2"){
		m=bjb2top;
		n=pb3top;
	// }if(i=="clpb3"){
	// 	m=pb3top;
	// 	n=cd4top;
	// }if(i=="clcd4"){
		m=cd4top;
		n=jj5top;
	}if(i=="cljj5"){
		m=jj5top;
		n=rxpj6top;
	}if(i=="clrxpj6"){
		m=rxpj6top;
		n=pppj7top;
	}if(i=="clpppj7"){
		m=pppj7top;
		n=adv2top;
	}
	if(scrollTop  > m -150 && scrollTop < n - 150){
		document.getElementById(i).style.color="#333";
	}else{
		document.getElementById(i).style.color="#999";
	}	
}