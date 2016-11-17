<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#floatPanel .ctrolPanel{width:36px;height:166px;border:solid 1px #ddd;position:fixed;right:20px;top:300px;overflow:hidden;z-index:10000; _position:absolute; /* for IE6 */_top:expression(documentElement.scrollTop + 300);}
#floatPanel .ctrolPanel a{width:34px;font-size:12px;color:#ff6600;letter-spacing:1px;text-align:center;overflow:hidden;}
#floatPanel .ctrolPanel .arrow{height:29px;line-height:28px;display:block;margin:1px auto;}
#floatPanel .ctrolPanel .arrow span{display:none;}
#floatPanel .ctrolPanel .arrow:hover{background:#f4f4f4;}
#floatPanel .ctrolPanel .arrow:hover span{display:block;}
#floatPanel .ctrolPanel .contact{height:60px;display:block;margin:2px auto;}
#floatPanel .ctrolPanel .contact span{line-height:90px;}
#floatPanel .ctrolPanel .qrcode{height:40px;display:block;margin:2px auto;}
#floatPanel .ctrolPanel .qrcode span{display:none;}

.popPanel{width:205px;height:214px; position:fixed;right:90px;top:300px;z-index:10000;overflow:hidden;display:none;_position:absolute; /* for IE6 */_top:expression(documentElement.scrollTop + 300); }
.popPanel-inner{width:205px;height:220px;position:relative;overflow:hidden;}
.arrowPanel{width:10px;height:210px;position:absolute;right:1px;top:102px;}
.arrowPanel .arrow01{width:0;height:0;font-size:0;line-height:0;border-top:10px solid transparent;_border-top:10px solid black;_filter:chroma(color=black);border-right:10px solid transparent;_border-right:10px solid black;_filter:chroma(color=black);border-bottom:10px solid transparent;_border-bottom:10px solid black;_filter:chroma(color=black);border-left:10px solid #ddd;position:absolute;bottom:0;position:absolute;left:2px;top:0;}
.arrowPanel .arrow02{width:0;height:0;font-size:0;line-height:0;border-top:10px solid transparent;_border-top:10px solid black;_filter:chroma(color=black);border-right:10px solid transparent;_border-right:10px solid black;_filter:chroma(color=black);border-bottom:10px solid transparent;_border-bottom:10px solid black;_filter:chroma(color=black);border-left:10px solid #fff;position:absolute;bottom:0;position:absolute;left:0;top:0;}
.qrcodePanel{width:194px; height:212px; background:#fff;text-align:center;border:solid 1px #ddd;position:absolute;left:0;top:0;overflow:hidden;}
.qrcodePanel img{width:174px;height:174px;border:none;padding:5px 5px 0px 5px;}
.qrcodePanel p{font-size:12px;color:#666;line-height:20px;letter-spacing:1px;}
</style>
<script type="text/javascript">
$(function(){
	// 页面浮动面板
	$("#floatPanel a.arrow").eq(0).click(function(){
		$("html,body").animate({scrollTop :0}, 300);
		return false;
	});
	$("#floatPanel a.arrow").eq(1).click(function(){
		$("html,body").animate({scrollTop : $(document).height()}, 300);
		return false;
	});

	var panel = $(".popPanel");	
	var w = panel.outerWidth();
	
	$(".qrcode").hover(function(){
		panel.css("width","0px").show();
		panel.animate({"width" : w + "px"},300);
	},function(){
		panel.animate({"width" : "0px"},300);
	});
	
});
</script>
