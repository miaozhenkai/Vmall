//手机
function showshouji() {
	document.getElementById("shouji_zcd").style.backgroundColor = "white";
	document.getElementById("shouji_zcd").style.borderRadius = "10px 0px 0px 0px";
	document.getElementById("hideshouji").style.display = "block";

}

function hideshouji() {
	document.getElementById("hideshouji").style.display = "none";
	document.getElementById("shouji_zcd").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//笔记本
function showbijiben() {
	document.getElementById("bijiben_zcd").style.backgroundColor = "white";
	document.getElementById("hidebijiben").style.display = "block";
}

function hidebijiben() {
	document.getElementById("hidebijiben").style.display = "none";
	document.getElementById("bijiben_zcd").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//智能穿戴
function showchuandai() {
	document.getElementById("chuandai_zcd").style.backgroundColor = "white";
	document.getElementById("hidechuandai").style.display = "block";
}

function hidechuandai() {
	document.getElementById("hidechuandai").style.display = "none";
	document.getElementById("chuandai_zcd").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//智能家居
function showjiaju() {
	document.getElementById("jiaju_zcd").style.backgroundColor = "white";
	document.getElementById("hidejiaju").style.display = "block";
}

function hidejiaju() {
	document.getElementById("hidejiaju").style.display = "none";
	document.getElementById("jiaju_zcd").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//配件
function showpeijian() {
	document.getElementById("peijian").style.backgroundColor = "white";
	document.getElementById("hidepeijian").style.display = "block";
}

function hidepeijian() {
	document.getElementById("hidepeijian").style.display = "none";
	document.getElementById("peijian").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//其他
function showqita() {
	document.getElementById("qita").style.backgroundColor = "white";
	document.getElementById("hideqita").style.display = "block";
}

function hideqita() {
	document.getElementById("hideqita").style.display = "none";
	document.getElementById("qita").style.backgroundColor = "rgba(0,0,0,0.0)";
}
//悬浮
// function on(i) {
// 	document.getElementById("xft" + i).src = ${pageContext.request.contextPath}+"/img/xuanfu/" + i + "-2.png";
// 	document.getElementById("xfz" + i).style.display = "block";
// }
//
// function out(i) {
// 	document.getElementById("xft" + i).src = ${pageContext.request.contextPath}+"/img/xuanfu/" + i + "-1.png";
// 	document.getElementById("xfz" + i).style.display = "none";
// }
//电话处二维码
function showerweima() {
	document.getElementById("dherweima").style.display = "block";
}

function hideerweima() {
	document.getElementById("dherweima").style.display = "none";
}

//返回顶部
$(document).ready(function() {
	$("#xuanfu4").hide();
	$(window).scroll(function() {
		if($(window).scrollTop() > 400) {
			$("#xuanfu4").fadeIn(500);
		} else {
			$("#xuanfu4").fadeOut(500);
		}
	});
	$("#xft4").click(function() {
		if($('html').scrollTop()) {
			$('html').animate({
				scrollTop: 0
			}, 300); //动画效果
			return false;
		}
		$('body').animate({
			scrollTop: 0
		}, 300);
		return false;
	});
});
//最上 
//更多精彩隐藏菜单
$(document).ready(function() {
	$("#gengduojingcaishow").hide();
	$("#gengduojingcai > .xjtred").hide();
	$("#gengduojingcai").hover(function() {
		$("#gengduojingcai").css("background-color", "white");
		$("#gengduojingcai > a").css("color", "#ca151d");
		$("#gengduojingcai > .xjtblack").hide();
		$("#gengduojingcai > .xjtred").show();
		$("#gengduojingcaishow").show();
		$("#zsleft > #fengexian1").html("&nbsp");
		$("#zsleft > #fengexian1").css("background-color", "white");

	}, function() {
		$("#gengduojingcai > .xjtred").hide();
		$("#gengduojingcai > .xjtblack").show();
		$("#gengduojingcaishow").hide();
		$("#gengduojingcai > a").css("color", "#a4a4a4");
		$("#gengduojingcai").css("background-color", "#f9f9f9");
		$("#zsleft > #fengexian1").html("|");
		$("#zsleft > #fengexian1").css("background-color", "#f9f9f9");
	});
	$("#gengduojingcaishow").hover(function() {
		$("#gengduojingcai").css("background-color", "white");
		$("#gengduojingcai > a").css("color", "#ca151d");
		$("#gengduojingcai > .xjtblack").hide();
		$("#gengduojingcai > .xjtred").show();
		$("#gengduojingcaishow").show();
		$("#zsleft > #fengexian1").html("&nbsp");
		$("#zsleft > #fengexian1").css("background-color", "white");
	}, function() {
		$("#gengduojingcai > .xjtred").hide();
		$("#gengduojingcai > .xjtblack").show();
		$("#gengduojingcaishow").hide();
		$("#gengduojingcai > a").css("color", "#a4a4a4");
		$("#gengduojingcai").css("background-color", "#f9f9f9");
		$("#zsleft > #fengexian1").html("|");
		$("#zsleft > #fengexian1").css("background-color", "#f9f9f9");
	});
});
//客户服务隐藏菜单
$(document).ready(function() {
	$("#kehufuwushow").hide();
	$("#kehufuwu > .xjtred").hide();
	$("#kehufuwu").hover(function() {
		$("#kehufuwu").css("background-color", "white");
		$("#kehufuwu > a").css("color", "#ca151d");
		$("#kehufuwu > .xjtblack").hide();
		$("#kehufuwu > .xjtred").show();
		$("#kehufuwushow").show();
		$("#fengexian2").html("&nbsp");
		$("#fengexian3").html("&nbsp");
		$("#fengexian2").css("background-color", "white");
		$("#fengexian3").css("background-color", "white");
	}, function() {
		$("#kehufuwu > .xjtred").hide();
		$("#kehufuwu > .xjtblack").show();
		$("#kehufuwushow").hide();
		$("#kehufuwu > a").css("color", "#a4a4a4");
		$("#kehufuwu").css("background-color", "#f9f9f9");
		$("#fengexian2").html("|");
		$("#fengexian3").html("|");
		$("#fengexian2").css("background-color", "#f9f9f9");
		$("#fengexian3").css("background-color", "#f9f9f9");
	});
	$("#kehufuwushow").hover(function() {
		$("#kehufuwu").css("background-color", "white");
		$("#kehufuwu > a").css("color", "#ca151d");
		$("#kehufuwu > .xjtblack").hide();
		$("#kehufuwu > .xjtred").show();
		$("#kehufuwushow").show();
		$("#fengexian2").html("&nbsp");
		$("#fengexian3").html("&nbsp");
		$("#fengexian2").css("background-color", "white");
		$("#fengexian3").css("background-color", "white");
	}, function() {
		$("#kehufuwu > .xjtred").hide();
		$("#kehufuwu > .xjtblack").show();
		$("#kehufuwushow").hide();
		$("#kehufuwu > a").css("color", "#a4a4a4");
		$("#kehufuwu").css("background-color", "#f9f9f9");
		$("#fengexian2").html("|");
		$("#fengexian3").html("|");
		$("#fengexian2").css("background-color", "#f9f9f9");
		$("#fengexian3").css("background-color", "#f9f9f9");
	});
});
//网站导航隐藏菜单
$(document).ready(function() {
	$("#wangzhandaohangshow").hide();
	$("#wangzhandaohang > .xjtred").hide();
	$("#wangzhandaohang").hover(function() {
		$("#wangzhandaohang").css("background-color", "white");
		$("#wangzhandaohang > a").css("color", "#ca151d");
		$("#wangzhandaohang > a").text("网站导航");
		$("#wangzhandaohang > .xjtblack").hide();
		$("#wangzhandaohang > .xjtred").show();
		$("#wangzhandaohangshow").show();
		$("#fengexian3").html("&nbsp");
		$("#fengexian4").html("&nbsp");
		$("#fengexian3").css("background-color", "white");
		$("#fengexian4").css("background-color", "white");
	}, function() {
		$("#wangzhandaohang > .xjtred").hide();
		$("#wangzhandaohang > .xjtblack").show();
		$("#wangzhandaohangshow").hide();
		$("#wangzhandaohang > a").css("color", "#a4a4a4");
		$("#wangzhandaohang > a").html("网站导航&nbsp;");
		$("#wangzhandaohang").css("background-color", "#f9f9f9");
		$("#fengexian3").html("|");
		$("#fengexian4").html("|");
		$("#fengexian3").css("background-color", "#f9f9f9");
		$("#fengexian4").css("background-color", "#f9f9f9");
	});
	$("#wangzhandaohangshow").hover(function() {
		$("#wangzhandaohang").css("background-color", "white");
		$("#wangzhandaohang > a").css("color", "#ca151d");
		$("#wangzhandaohang > a").text("网站导航");
		$("#wangzhandaohang > .xjtblack").hide();
		$("#wangzhandaohang > .xjtred").show();
		$("#wangzhandaohangshow").show();
		$("#fengexian3").html("&nbsp");
		$("#fengexian4").html("&nbsp");
		$("#fengexian3").css("background-color", "white");
		$("#fengexian4").css("background-color", "white");
	}, function() {
		$("#wangzhandaohang > .xjtred").hide();
		$("#wangzhandaohang > .xjtblack").show();
		$("#wangzhandaohangshow").hide();
		$("#wangzhandaohang > a").css("color", "#a4a4a4");
		$("#wangzhandaohang > a").html("网站导航&nbsp;");
		$("#wangzhandaohang").css("background-color", "#f9f9f9");
		$("#fengexian3").html("|");
		$("#fengexian4").html("|");
		$("#fengexian3").css("background-color", "#f9f9f9");
		$("#fengexian4").css("background-color", "#f9f9f9");
	});
});

//手机版隐藏菜单
$(document).ready(function() {
	$("#shoujibanshow").hide();
	$("#shoujiban > .xjtred").hide();
	$("#shoujiban").hover(function() {
		$("#shoujiban").css("background-color", "white");
		$("#shoujiban > a").css("color", "#ca151d");
		$("#shoujiban > a").text("手机版");
		$("#shoujiban > .xjtblack").hide();
		$("#shoujiban > .xjtred").show();
		$("#shoujibanshow").show();
		$("#fengexian4").html("&nbsp");
		$("#fengexian4").css("background-color", "white");
	}, function() {
		$("#shoujiban > .xjtred").hide();
		$("#shoujiban > .xjtblack").show();
		$("#shoujibanshow").hide();
		$("#shoujiban > a").css("color", "#a4a4a4");
		$("#shoujiban > a").html("手机版&nbsp;");
		$("#shoujiban").css("background-color", "#f9f9f9");
		$("#fengexian4").html("|");
		$("#fengexian4").css("background-color", "#f9f9f9");
	});
	$("#shoujibanshow").hover(function() {
		$("#shoujiban").css("background-color", "white");
		$("#shoujiban > a").css("color", "#ca151d");
		$("#shoujiban > a").text("手机版");
		$("#shoujiban > .xjtblack").hide();
		$("#shoujiban > .xjtred").show();
		$("#shoujibanshow").show();
		$("#fengexian4").html("&nbsp");
		$("#fengexian4").css("background-color", "white");
	}, function() {
		$("#shoujiban > .xjtred").hide();
		$("#shoujiban > .xjtblack").show();
		$("#shoujibanshow").hide();
		$("#shoujiban > a").css("color", "#a4a4a4");
		$("#shoujiban > a").html("手机版&nbsp;");
		$("#shoujiban").css("background-color", "#f9f9f9");
		$("#fengexian4").html("|");
		$("#fengexian4").css("background-color", "#f9f9f9");
	});
});

//购物车隐藏菜单
$(document).ready(function() {
	$("#gouwucheshow").hide();
	$("#gouwuche").hover(function() {
		$("#gouwuche").css("background-color", "white");
		$("#gouwuche > a").css("color", "#ca151d");
		$("#gouwucheshow").show();
	}, function() {
		$("#gouwucheshow").hide();
		$("#gouwuche > a").css("color", "#a4a4a4");
		$("#gouwuche").css("background-color", "rgb(242, 242, 242)");
	});
	$("#gouwucheshow").hover(function() {
		$("#gouwuche").css("background-color", "white");
		$("#gouwuche > a").css("color", "#ca151d");
		$("#gouwucheshow").show();
	}, function() {
		$("#gouwucheshow").hide();
		$("#gouwuche > a").css("color", "#a4a4a4");
		$("#gouwuche").css("background-color", "rgb(242, 242, 242)");
	});
});
//轮播图速度
$(function() {
	$('#myCarousel').carousel({
		interval: 3000
	});
});
$(function() {
	$('#myCarousel1').carousel({
		interval: 2000
	});
});


