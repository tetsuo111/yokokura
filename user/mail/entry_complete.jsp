<%@ page contentType="text/html; charset=MS932" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/yokokura.tld" prefix="yokokura" %>
<html:html locale="true">

<head>
<title>�����}�K�o�^�t�H�[��</title>
<link href="<yokokura:secureRewrite href="/common/css/style.css" secure="any"/>" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript" src="<yokokura:secureRewrite href="/common/js/mm_roll.js" secure="any"/>"></script>
</head>

<body bgcolor="#ffffff" text="black" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div align="center">
<table width="810" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr>
<td rowspan="3" width="15" background="<yokokura:secureRewrite href="/common/img/bg_left.gif" secure="any"/>"><img src="<yokokura:secureRewrite href="/common/img/spacer.gif" secure="any"/>" alt="" width="15" height="1" border="0"></td>
<td align="center" valign="top">

<%-- �w�b�_�[���� --%>
<jsp:include page="/header.jsp" flush="true" />
<%-- �w�b�_�[���� --%>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td class="text10" align="right"><yokokura:secureLink href="/index.html" secure="false">HOME</yokokura:secureLink> &gt; �@���̓Ƃ茾 &gt; �����}�K�o�^�t�H�[��</td>
</tr>
</table>
<img src="<yokokura:secureRewrite href="/doctor/img/title2.gif" secure="any"/>" alt="�����}�K�o�^�t�H�[��" width="650" height="23" border="0"><br>
<br>
<br>
<table width="650" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="text12">
  <table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="#82a589">
    <tr>
      <td height="25" align="center" bgcolor="82a589"><strong>�����}�K�o�^</strong></td>
    </tr>
    <tr>
      <td bgcolor="#eff5f0" align="center"><br>
          <table align=center cellpadding=5 cellspacing=5  class="text12" border="0" width="510">
            <tr>
              <td height="20" colspan="2"><strong><font color="#003333">������</font></strong></td>
            </tr>
            <tr>
              <td height="20">
				�d�q���[��<b><bean:write name="user_mail_form_EntryForm" property="mailaddress" ignore="true" filter="true" /></b>�փ����}�K�o�^�������������A�o�^�m�F���[���𑗐M���܂����B<br>
				�o�^�m�F���[�����͂��Ă��Ȃ��ꍇ�́A�d�q���[���̓��͂ɊԈႢ�����������A��M���ۂ��s���Ă���\��������܂��B���m�F���������B
              </td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:link page="/mail/entry.do">�����}�K�o�^�֖߂�</html:link></td>
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

<%-- �t�b�^�[���� --%>
<jsp:include page="/footer.jsp" flush="true" />
<%-- �t�b�^�[���� --%>

</table>
</div>
</body>

</html:html>