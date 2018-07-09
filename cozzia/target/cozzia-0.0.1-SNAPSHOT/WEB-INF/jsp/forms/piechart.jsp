<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" charset="utf-8">
/* Title settings */		
title = "用户按摩模式比例";
titleXpos = 360;
titleYpos = 70;

/* Pie Data */
pieRadius = 130;
pieXpos = 150;
pieYpos = 180;
pieData = [149422, 51315, 172095, 166565, 53329, 18060, 18074, 11941, 11393, 11104, 12110];
pieLegend = [
"%%.%% – 揉捏", 
"%%.%% – 指压", 
"%%.%% – 捶打", 
"%%.%% – 推拿", 
"%%.%% – 拉伸", 
"%%.%% – 磁疗", 
"%%.%% – 针灸", 
"%%.%% – 按压", 
"%%.%% – 打击", 
"%%.%% – 震动", 
"%%.%% – 其他"];

pieLegendPos = "east";

$(function () {
	var r = Raphael("chartHolder");
	 
	r.text(titleXpos, titleYpos, title).attr({"font-size": 20});
	
	var pie = r.piechart(pieXpos, pieYpos, pieRadius, pieData, {legend: pieLegend, legendpos: pieLegendPos});
	pie.hover(function () {
		this.sector.stop();
		this.sector.scale(1.1, 1.1, this.cx, this.cy);
		if (this.label) {
			this.label[0].stop();
			this.label[0].attr({ r: 7.5 });
			this.label[1].attr({"font-weight": 800});
		}
	}, function () {
		this.sector.animate({ transform: 's1 1 ' + this.cx + ' ' + this.cy }, 500, "bounce");
		if (this.label) {
			this.label[0].animate({ r: 5 }, 500, "bounce");
			this.label[1].attr({"font-weight": 400});
		}
	});
	
});
</script>

<div id="chartHolder"></div>
