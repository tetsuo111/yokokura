// ボタンロールオーバー用
function rollOver(){
	var preLoad = new Object();
	$('img.over,input.over').each(function(){
		var imgSrc = this.src;
		var fType = imgSrc.substring(imgSrc.lastIndexOf('.'));
		var imgName = imgSrc.substr(0, imgSrc.lastIndexOf('.'));
		var imgOver = imgName + '-on' + fType;
		preLoad[this.src] = new Image();
		preLoad[this.src].src = imgOver;
		$(this).hover(
			function (){
				this.src = imgOver;
			},
			function (){
				this.src = imgSrc;
			}
		);
	});
}
$(document).ready(rollOver);

$(function() {


});

