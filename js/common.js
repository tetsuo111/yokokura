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

/**
 * 脳力チェックテスト用入力チェック
 */
function validate(f) {
	var len = f.elements.length;
	var startidx = 1;
	var endidx = 30;
	for (var i = startidx; i <= endidx; i++) {
		var key = 'q' + i;
		var len = f.elements[key].length;
		var flg = 0;
		for (var j = 0; j < len; j++) {
			if (f.elements[key][j].checked) {
				flg = 1;
			}
		}
		if (flg == 0) {
			alert('すべての設問項目にご回答ください。');
			return false;
		}
	}
	return true;
}

jQuery(function($){
	/**
	 * ポップアップ処理
	 */
	$('.open').on('click', function(){
		window.open(this.href, '_blank', 'openwin ,top=50,left=50,width=960,height=750,scrollbars=1,location=0,menubar=0,toolbar=0,status=1,directories=0,resizable=1');
		return false;
	});
});
