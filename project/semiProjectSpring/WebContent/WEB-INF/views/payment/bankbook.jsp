<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="PaymentOnline_Control" style="display: block;">
    

    <input type="hidden" value="PayMethod_Set" name="PayMethod_SetClientID">
    <table id="Table1" cellspacing="1" cellpadding="3" width="670" bgcolor="#e54698" border="0" style="text-align:left;margin-top:10px;">
        <tbody><tr>
            <td colspan="2" bgcolor="#fce4ea" style="padding-left: 14px;" height="30" class="popup">
                <input type="radio" value="1" name="PayInfoHis" onclick="fn_payInfoHis('1')" checked="" style="cursor: hand"><b> �ֱ� �Ա������� ����</b>
                <input type="radio" value="2" name="PayInfoHis" onclick="fn_payInfoHis('2')" style="cursor: hand"><b>��

                    �Ա����� �Է�</b></td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                �Ա��Ͻ� ����</td>
            <td bgcolor="#ffffff">
                <select name="PayMethod_Set:BankCode" id="PayMethod_Set_BankCode" style="width:140px; padding:5px 0; font-size:14px;"><option value="1">��������</option><option value="2">�������</option><option value="3">��������</option><option value="12">��Ƽ����</option><option value="15">��������</option><option value="13">�츮����</option><option value="14">��ü������</option><option value="8">��������</option><option value="11">�ϳ�����</option></select>
            </td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                ������ Ȯ��</td>
            <td bgcolor="#ffffff">
                �߾˶��Ŀ�´����̼�</td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                �Ա��� ����</td>
            <td bgcolor="#ffffff">
                <input class="form" id="BankSender" type="text" maxlength="20" size="20" value="" name="BankSender"></td>
        </tr>
    </tbody></table>
    
    
</div>