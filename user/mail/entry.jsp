<%@ page contentType="text/html; charset=MS932" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/yokokura.tld" prefix="yokokura" %>
<html:html locale="true">

<head>
<title>�����}�K�o�^�t�H�[��</title>
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
<td class="text12">�u�Z���������A���̊Ԃ̋x���Ɂc�@���́g�����̓Ƃ茾�h���A�g�у��[���Ŕz�M���Ă��܂��B����]�̕��́A���L�̃t�H�[���ɓo�^���������B�p�\�R���̓d�q���[���A�h���X�ł��o�^���\�ł��B�v<br>
  <br>  
<font class="text10">(����)�g�у��[���A�h���X��o�^�������ŁA�h���C���w���M�ݒ������Ă���ꍇ�́A�o�^�O��<font color="#993333">@kenkogairai.com</font>����̃��[������M�w�肵�Ă����Ă��������B</font><br>
  <br>
  <span class="caution"><html:errors /></span>
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
              <td width=120 height="20">����<font color="#125952">*</font></td>
              <td width="354">��
                  <html:text property="lastName" size="15"/>
            ��
            <html:text property="firstName" size="15"/>
            <font class="text10">�i�S�p�E�K�{�j</font></td>
            </tr>
            <tr>
              <td width="120" height="20">�d�q���[��<font color="#125952">*</font></td>
              <td><html:text property="mailaddress" size="40"/>
                  <font class="text10">�i���p�E�K�{�j </font></td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:submit property="REGIST_CONFIRM" value="�m�F"/></td>
    </tr>
  </table>
  <br>  <table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="#82a589">
    <tr>
      <td height="25" align="center" bgcolor="82a589"><strong>�����}�K����</strong></td>
    </tr>
    <tr>
      <td bgcolor="#eff5f0" align="center"><br>
          <table align=center cellpadding=5 cellspacing=5  class="text12" border="0" width="510">
            <tr>
              <td width="120" height="20">�d�q���[��<font color="#125952">*</font></td>
              <td width="354"><html:text property="releaseMailaddress" size="40"/>
                  <font class="text10">�i���p�E�K�{�j                  </font></td>
            </tr>
          </table>
          <br>
      </td>
    </tr>
    <tr height="40">
      <td align="center" bgcolor="#d1e3dc" height="40"><html:submit property="DELETE_CONFIRM" value="�����˗�"/>
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
<div style="padding:8px;border:solid 1px #999;text-align:center;"><script type="text/javascript" src="https://seal.fujissl.jp/getSeal.do?cn=www.kenkogairai.com" ></script><br /><p style="text-align:left;font-size:11px;line-height:15px;padding-top:10px;">���T�C�g�ł�FujiSSL��<a href="https://www.fujissl.jp/" target="_blank">SSL�ؖ���</a>���g�p���A�펞SSL�Í����ʐM���s���Ă��܂��B FujiSSL �T�C�g�V�[�����N���b�N���āA���،��ʂ����m�F���������܂��B</p></div>
</td>
</tr>
</table>
<!-- END of Secure seal -->
<br>
</td>
<td rowspan="3" width="15" background="<yokokura:secureRewrite href="/common/img/bg_right.gif" secure="any"/>"><img src="<yokokura:secureRewrite href="/common/img/spacer.gif" secure="any"/>" alt="" width="15" height="1" border="0"></td>
</tr>

<%-- �t�b�^�[���� --%>
<jsp:include page="/footer.jsp" flush="true" />
<%-- �t�b�^�[���� --%>
</html:form>
</table>
</div>
</body>

</html:html>