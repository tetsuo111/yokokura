<?php
	// 設問数
	$startidx = 1;
	// 脳健幸度チェック設問数
	$endidxA = 15;
	// 脳疲弊度チェック設問数
	$endidx = 30;

	// 脳健幸度チェック
	$pointA = 0;
	// 脳疲弊度チェック
	$pointB = 0;
	// 脳力
	$pointTotal = 0;

	// 脳健幸度チェック結果
	$statusA = 0;
	// 脳健幸度チェック0チェック
	$zeroStatusA = 0;
	// 脳疲弊度チェック結果
	$statusB = 15;
	// 脳力チェック結果
	$statusTotal = 0;

	// 脳健幸度チェック結果文言
	$msgA = '設問にお答えください';
	// 脳疲弊度チェック結果文言
	$msgB = '設問にお答えください';
	// 脳力チェック結果門語
	$msgTotal = '設問にお答えください';

	// 脳健幸度チェック
	for ($i = $startidx; $i <= $endidxA; $i++) {
		$key = 'q' . $i;
		$val = $_GET[$key];
		if (isset($val) && $val != '') {
			if ($val == '2') {
				$pointA += 2;
			} else if ($val == '1') {
				$pointA += 1;
			} else if ($val == '0') {
				$zeroStatusA += 1;
			}
			$statusA++;
		}
	}

	//脳疲弊度チェック
	for ($i = $endidxA + 1; $i <= $endidx; $i++) {
		$key = 'q' . $i;
		$val = $_GET[$key];
		if (isset($val) && $val != '') {
			if ($val == '2') {
				$pointB += 2;
			} else if ($val == '1') {
				$pointB += 1;
			}
			$statusB++;
		}
	}

	//===============================================
	// 脳健幸度チェック結果
	//===============================================
	//===============================================
	// ■26点～30点 & 「0」なし
	//===============================================
	//あなたは・・・「イキイキ健幸脳！」。この調子で、日々の健幸を大切に！
	if ($zeroStatusA == 0) {
		if ($pointA >= 26 && $pointA <= 30) {
			$msgA = '26点～30点 & 「0」 なし';
		} else if ($pointA >= 0 && $pointA <= 9) {
			$msgA = '0点～9点または「0」 5つ以上';
		} else if ($pointA >= 10 && $pointA <= 16) {
			$msgA = '10点～16点または「0」 3～4つ';
		} else if ($pointA >= 17 && $pointA <= 25) {
			$msgA = '17点～25点または「0」 1～2つ';
		}
	}
	else {
		//===============================================
		//■0点～9点または「0」5つ以上
		//===============================================
		//あなたは・・・「疲弊プログラムの可能性あり」。日々かなり頑張ってお過ごしのようですね。じっくり時間をとって健幸プログラムに切り換えましょう
		//===============================================
		if (($pointA >= 0 && $pointA <= 9) || ($zeroStatusA >= 5)) {
			$msgA = '0点～9点または「0」 5つ以上';
		}
		//===============================================
		//■10点～16点または「0」3～4つ
		//===============================================
		//あなたは…「疲弊プログラム一歩手前」。気づかないうちに心と身体が無理をしているようです。一度じっくり自分自身と向き合ってみましょう！
		else if (($pointA >= 10 && $pointA <= 16) || ($zeroStatusA == 3 || $zeroStatusA == 4)) {
			$msgA = '10点～16点または「0」 3～4つ';
		}
		//===============================================
		//■17点～25点または「0」1～2つ
		//===============================================
		//あなたは…「ほぼ健幸脳！」。自分自身と向き合う小さな時間をもって、わずかな気がかり・ストレス・不調を軽やかに！
		else if (($pointA >= 17 && $pointA <=25) || ($zeroStatusA == 1 || $zeroStatusA == 2)) {
			$msgA = '17点～25点または「0」 1～2つ';
		}
	}

	//===============================================
	// 脳疲弊度チェック結果
	//===============================================
	// 0～10:軽度疲弊
	if ($pointB >= 0 && $pointB <= 10) {
		$msgB = '軽度疲弊';
	}
	// 11～20:中等度疲弊
	elseif ($pointB >= 11 && $pointB <= 20) {
		$msgB = '中等度疲弊';
	}
	// 21～30:重度疲弊
	else if ($pointB >= 21 && $pointB <= 30) {
		$msgB = '重度疲弊';
	}

	//===============================================
	//脳力結果
	//===============================================
	$pointTotal = $pointA - $pointB;

	// 21～30:脳力は最高の元気プログラムで充実
	if ($pointTotal >= 21 && $pointTotal <= 30) {
		$msgTotal = '脳力は最高の元気プログラムで充実';
	}
	// 11～20:元気プログラムの内容を充実すればさらにレベルアップします。
	else if ($pointTotal >= 11 && $pointTotal <= 20) {
		$msgTotal = '元気プログラムの内容を充実すればさらにレベルアップします。';
	}
	// 0～10:平均的な脳力です。五感療法を実施することで元気プログラムにスイッチが入ります。
	else if ($pointTotal >= 0 && $pointTotal <= 10) {
		$msgTotal = '平均的な脳力です。<br>五感療法を実施することで元気プログラムにスイッチが入ります。';
	}
	// -1～-10:平均の脳力からややネガティブになっています。快食と五感療法を早く実施してください。健康外来でアドバイスを受けると元気プログラムが早く入ります。
	else if ($pointTotal >= -10 && $pointTotal <= -1) {
		$msgTotal = '平均の脳力からややネガティブになっています。<br>快食と五感療法を早く実施してください。<br>健康外来でアドバイスを受けると元気プログラムが早く入ります。';
	}
	// -11～20:脳力は疲弊プログラムになっています。自分だけでは改善しなくなっているので、健康外来の受診をお勧めします。
	else if ($pointTotal >= -20 && $pointTotal <= -11) {
		$msgTotal = '脳力は疲弊プログラムになっています。<br>自分だけでは改善しなくなっているので、健康外来の受診をお勧めします。';
	}
	// -21～-30:重度の脳疲弊で脳力が失われています。健康外来を受診し薬物療法の併用も必要かもしれません。
	else if ($pointTotal >= -30 && $pointTotal <= -21) {
		$msgTotal = '重度の脳疲弊で脳力が失われています。<br>健康外来を受診し薬物療法の併用も必要かもしれません。';
	}

?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta name="description" content="快食・快眠・快便・快適・・・。脳疲労解消で心身の健康管理">
<meta name="keywords" content="健康,更年期障害,肥満,生活習慣病,ストレス,疲労,うつ,子宮癌,乳がん,自律神経失調症,月経困難症,子宮内膜症,生理不順,排卵障害,卵巣機能不全,避妊,不妊症,女性の健康,脳疲労,五感療法,アロマセラピー,アートセラピー,サウンドセラピー,快食,快便,快眠,メンタル,健康外来,禁煙">
<title>脳力チェックテスト結果</title>

<link rel="stylesheet" href="../css/common.css" />
<link rel="stylesheet" href="../css/style.css" />
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="../js/common.js"></script>

<!--[if lt IE 9]>
<script src="../js/html5.js"></script>
<![endif]-->
</head>
<body>
<div id="wrapper">
	<!-- ヘッダー開始 -->
	<header id="header">
		<div class="wrap">
			<h1><a href="../index.html"><img src="../images/logo.png" width="114" height="265" alt="健康外来サロン" /></a></h1>
			<nav id="navi">
				<ul>
					<li><a href="../health/index.html">健康外来サロンとは？</a></li>
					<li><a class="active" href="../check/index.html">チェックテスト</a></li>
					<li><a href="../mufuan.html">無風庵</a></li>
					<li><a href="../personal/index.html">サロンメニュー</a></li>
				</ul>
			</nav>
			<div class="header-btn">
				<a href="../map.html" class="opa btn btn-3">アクセスマップ</a>
			</div>
		</div>
	</header>
	<!-- ヘッダー終了 -->
	<!-- ページタイトル開始 -->
	<div id="page_title">
		<h2><img src="../images/check_logo.png" width="359" height="82" alt="健康外来サロンとは？" /></h2>
	</div>
	<!-- ページタイトル終了 -->
	<!-- コンテンツ開始 -->
	<div id="content">
		<!-- メインコンテンツ開始 -->
		<article id="main" class="post-main">
			<section class="post">
				<header class="title">
					<h2> 脳力チェックテスト結果</h2>
				</header>
				<div class="desc">
					<h3 class="tit01">あなたの脳力チェックテストの結果は：<span class="font24 red"><?php echo $pointTotal; ?></span>点です。</h3>
					<table class="tb01 checkresult-table">
						<tr>
							<th colspan="2">
								<span class="red"><?php echo $msgTotal; ?></span>
							</th>
						</tr>
						<tr>
							<td class="bold">21点 〜 30点 </td>
							<td>脳力は最高の元気プログラムで充実</td>
						</tr>
						<tr>
							<td class="bold">11点 〜 20点 </td>
							<td>元気プログラムの内容を充実すればさらにレベルアップします。</td>
						</tr>
						<tr>
							<td class="bold">0点 〜 10点 </td>
							<td>
								<p>平均的な脳力です。</p>
								<p>脳力は最高の元気プログラムで充実</p>
							</td>
						</tr>
						<tr>
							<td class="bold">-10点 〜 -1点 </td>
							<td>
								<p>平均の脳力からややネガティブになっています。</p>
								<p>快食と五感療法を早く実施してください。</p>
								<p>健康外来でアドバイスを受けると元気プログラムが早く入ります。</p>
							</td>
						</tr>
						<tr>
							<td class="bold">-20点 〜 -11点 </td>
							<td>
								<p>脳力は疲弊プログラムになっています。</p>
								<p>自分だけでは改善しなくなっているので、健康外来の受診をお勧めします。</p>
							</td>
						</tr>
						<tr>
							<td class="bold">-30点 〜 -21点  </td>
							<td>
								<p>重度の疲弊脳で脳力が失われています。</p>
								<p>健康外来を受診し薬物療法の併用も必要かもしれません。</p>
							</td>
						</tr>
					</table>
				
					<h3 class="tit01">脳健幸度チェック結果：<span class="font24 red"><?php echo $pointA; ?></span> 点<br/><span>( 0点チェック数：<span class="font24 red"><?php echo $zeroStatusA; ?></span>個 )</span></h3>
					<table class="tb01 checkresult-table">
						
						<tr>
							<th colspan="2">
								<span class="bold red"><?php echo $msgA; ?></span>
							</th>
						</tr>
						<tr>
							<td class="bold">26点 〜 30点 <br/>& 「0」 なし </td>
							<td>
								<p>あなたは・・・「イキイキ健幸脳！」。</p>
								<p>この調子で、日々の健幸を大切に！</p>
							</td>
						</tr>
						<tr>
							<td class="bold">17点 〜 25点<br/>または 「0」 1〜2個   </td>
							<td>
								<p>あなたは・・・「ほぼ健幸脳！」。 </p>
								<p>自分自身と向き合う小さな時間をもって、わずかな気がかり・ストレス・不調を軽やかに！</p>
							</td>
						</tr>
						<tr>
							<td class="bold">10点 〜 16点<br/>または 「0」 3〜4個  </td>
							<td>
								<p>あなたは・・・「疲弊プログラム一歩手前」。</p>
								<p>気づかないうちに心と身体が無理をしているようです。</p>
								<p>一度じっくり自分自身と向き合ってみましょう！</p>
							</td>
						</tr>
						<tr>
							<td class="bold">0点 〜 9点<br/>または 「0」 5個以上   </td>
							<td>
								<p>あなたは・・・「疲弊プログラムの可能性あり」。 </p>
								<p>日々かなり頑張ってお過ごしのようですね。 </p>
								<p>じっくり時間をとって健幸プログラムに切り換えましょう。</p>
							</td>
						</tr>
					</table>
					<h3 class="tit01"><span>脳疲弊度チェック結果：<span class="red font24"><?php echo $pointB; ?></span>点</span></h3>
					<table class="tb01 checkresult-table">
						<caption></caption>
						<colgroup></colgroup>
						<thead></thead>
						<tbody>
							<tr>
								<th colspan="2">
									<span class="red"><?php echo $msgB; ?></span>
								</th>
							</tr>
							<tr>
								<td class="bold">21点 〜 30点  </td>
								<td>
									<p>重度疲弊</p>
								</td>
							</tr>
							<tr>
								<td class="bold">11点 〜 20点  </td>
								<td>
									<p>中等度疲弊</p>
								</td>
							</tr>
							<tr>
								<td class="bold">0点 〜 10点 </td>
								<td>
									<p>軽度疲弊</p>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2">
									<p class="note">中等度疲弊以上の人は要注意。脳専門外来受診を勧めます。</p>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</section>
		</article>
	</div>
	<!-- コンテンツ終了 -->
	<!-- フッター開始 -->
	<footer id="footer">
		<div class="wrap">
			<div class="info">
				<div class="logo"><a href="../index.html"><img src="../images/footer_logo.png" width="258" height="53" alt="健康外来サロン" /></a></div>
				<p class="address">〒108-0014 東京都港区芝5-13-13 サダカビル3F</p>
			</div>
			<nav class="link">
				<div class="box01">
					<ul>
						<li><a href="../health/index.html">健康外来サロンとは？</a></li>
						<li><a href="../map.html">地図</a></li>
						<li><a href="../media.html">掲載メディア</a></li>
					</ul>
				</div>
				<div class="box02">
					<ul>
						<li><a href="../check/index.html">チェックテスト</a></li>
						<li><a href="../partner.html">関連の企業・団体</a></li>
						<li><a href="../sitemap.html">サイトマップ</a></li>
					</ul>
				</div>
				<div class="box03">
					<ul>
						<li><a href="../personal/index.html">サロンメニュー</a></li>
						
						<li><a href="../privacy.html">プライバシーポリシー</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<p class="copyright">Copyright (C) 2018 Yokokura Clinic. All Rights Reserved. </p>
		<div id="pagetop"><a class="opa" href="#wrapper"><img src="../images/pagetop.png" width="69" height="70" alt="page top" /></a></div>
	</footer>
	<!-- フッター終了 -->
</div>

</body>
</html>