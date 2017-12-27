<%@ page contentType="text/html; charset=MS932" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/yokokura.tld" prefix="yokokura" %>
<html:html locale="true">

<head>
<title>メルマガ解除フォーム</title>
<link href="<yokokura:secureRewrite href="/common/css/style.css" secure="any"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<yokokura:secureRewrite href="/common/js/mm_roll.js" secure="any"/>"></script>
</head>

<body bgcolor="#ffffff" text="black" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div align="center">
<table width="810" border="0" cellspacing="0" cellpadding="0" height="100%">
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
<td class="text12">
  <table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="#82a589">
    <tr>
      <td height="25" align="center" bgcolor="82a589"><strong>メルマガ解除</strong></td>
    </tr>
    <tr>
      <td bgcolor="#eff5f0" align="center"><br>
          <table align=center cellpadding=5 cellspacing=5  class="text12" border="0" width="510">
            <tr>
              <td height="20">
				電子メール<b><bean:write name="user_mail_form_EntryForm" property="releaseMailaddress" ignore="true" filter="true" /></b>へ解除完了処理を行いました。<br>
				メルマガを再購読するには、再度登録を行ってください。<br>
				ご購読ありがとうございました。 
              </td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:link page="/mail/entry.do">メルマガ登録へ戻る</html:link></td>
    </tr>
  </table>
</td>
</tr>
</table>
<br>
<br>
</td>
<td rowspan="3" width="15" background="<yokokura:secureRewrite href="/common/img/bg_right.gif" secure="any"/>"><img src="<yokokura:secureRewrite href="/common/img/spacer.gif" secure="any"/>" alt="" width="15" height="1" border="0"></td>
</tr>

<%-- フッター部分 --%>
<jsp:include page="/footer.jsp" flush="true" />
<%-- フッター部分 --%>

</table>
</div>
</body>

</html:html>