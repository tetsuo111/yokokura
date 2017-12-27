<%@ page contentType="text/html; charset=MS932" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/yokokura.tld" prefix="yokokura" %>
<html:html locale="true">

<head>
<title>メルマガ登録フォーム</title>
<link href="<yokokura:secureRewrite href="/common/css/style.css" secure="any"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<yokokura:secureRewrite href="/common/js/mm_roll.js" secure="any"/>"></script>
</head>

<body bgcolor="#ffffff" text="black" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div align="center">
<table width="810" border="0" cellspacing="0" cellpadding="0" height="100%">
<html:form action="/mail/diverge">
<tr>
<td rowspan="3" width="15" background="<yokokura:secureRewrite href="/common/img/bg_left.gif" secure="any"/>"><img src="<yokokura:secureRewrite href="/common/img/spacer.gif" secure="any"/>" alt="" width="15" height="1" border="0"></td>
<td align="center" valign="top">

<%-- ヘッダー部分 --%>
<jsp:include page="/header.jsp" flush="true" />
<%-- ヘッダー部分 --%>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td class="text10" align="right"><yokokura:secureLink href="/index.html" secure="false">HOME</yokokura:secureLink> &gt; 院長の独り言 &gt; メルマガ登録フォーム</td>
</tr>
</table>
<img src="<yokokura:secureRewrite href="/doctor/img/title2.gif" secure="any"/>" alt="メルマガ登録フォーム" width="650" height="23" border="0"><br>
<br>
<br>
<table width="650" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="text12">「忙しい毎日、束の間の休息に…院長の“今日の独り言”を、携帯メールで配信しています。ご希望の方は、下記のフォームに登録ください。パソコンの電子メールアドレスでも登録も可能です。」<br>
  <br>  
<font class="text10">(注意)携帯メールアドレスを登録される方で、ドメイン指定受信設定をされている場合は、登録前に<font color="#993333">@kenkogairai.com</font>からのメールを受信指定しておいてください。</font><br>
  <br>
  <span class="caution"><html:errors /></span>
  <table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="#82a589">
    <tr>
      <td height="25" align="center" bgcolor="82a589"><strong>メルマガ登録</strong></td>
    </tr>
    <tr>
      <td bgcolor="#eff5f0" align="center"><br>
          <table align=center cellpadding=5 cellspacing=5  class="text12" border="0" width="510">
            <tr>
              <td height="20" colspan="2"><strong><font color="#003333">会員情報</font></strong></td>
            </tr>
            <tr>
              <td width=120 height="20">氏名<font color="#125952">*</font></td>
              <td width="354">姓
                  <html:text property="lastName" size="15"/>
            名
            <html:text property="firstName" size="15"/>
            <font class="text10">（全角・必須）</font></td>
            </tr>
            <tr>
              <td width="120" height="20">電子メール<font color="#125952">*</font></td>
              <td><html:text property="mailaddress" size="40"/>
                  <font class="text10">（半角・必須） </font></td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:submit property="REGIST_CONFIRM" value="確認"/></td>
    </tr>
  </table>
  <br>  <table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="#82a589">
    <tr>
      <td height="25" align="center" bgcolor="82a589"><strong>メルマガ解除</strong></td>
    </tr>
    <tr>
      <td bgcolor="#eff5f0" align="center"><br>
          <table align=center cellpadding=5 cellspacing=5  class="text12" border="0" width="510">
            <tr>
              <td width="120" height="20">電子メール<font color="#125952">*</font></td>
              <td width="354"><html:text property="releaseMailaddress" size="40"/>
                  <font class="text10">（半角・必須）                  </font></td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:submit property="DELETE_CONFIRM" value="解除依頼"/>
      </td>
    </tr>
  </table></td>
</tr>
</table>
<br>
<!-- START of Secure seal -->
<table width="650" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="text12">
<div style="padding:8px;border:solid 1px #999;text-align:center;"><script type="text/javascript" src="https://seal.fujissl.jp/getSeal.do?cn=www.kenkogairai.com" ></script><br /><p style="text-align:left;font-size:11px;line-height:15px;padding-top:10px;">当サイトではFujiSSLの<a href="https://www.fujissl.jp/" target="_blank">SSL証明書</a>を使用し、常時SSL暗号化通信を行っています。 FujiSSL サイトシールをクリックして、検証結果をご確認いただけます。</p></div>
</td>
</tr>
</table>
<!-- END of Secure seal -->
<br>
</td>
<td rowspan="3" width="15" background="<yokokura:secureRewrite href="/common/img/bg_right.gif" secure="any"/>"><img src="<yokokura:secureRewrite href="/common/img/spacer.gif" secure="any"/>" alt="" width="15" height="1" border="0"></td>
</tr>

<%-- フッター部分 --%>
<jsp:include page="/footer.jsp" flush="true" />
<%-- フッター部分 --%>
</html:form>
</table>
</div>
</body>

</html:html>