<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="PaymentOnline_Control" style="display: block;">
    

    <input type="hidden" value="PayMethod_Set" name="PayMethod_SetClientID">
    <table id="Table1" cellspacing="1" cellpadding="3" width="670" bgcolor="#e54698" border="0" style="text-align:left;margin-top:10px;">
        <tbody><tr>
            <td colspan="2" bgcolor="#fce4ea" style="padding-left: 14px;" height="30" class="popup">
                <input type="radio" value="1" name="PayInfoHis" onclick="fn_payInfoHis('1')" checked="" style="cursor: hand"><b> 최근 입금정보와 동일</b>
                <input type="radio" value="2" name="PayInfoHis" onclick="fn_payInfoHis('2')" style="cursor: hand"><b>새

                    입금정보 입력</b></td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                입금하실 은행</td>
            <td bgcolor="#ffffff">
                <select name="PayMethod_Set:BankCode" id="PayMethod_Set_BankCode" style="width:140px; padding:5px 0; font-size:14px;"><option value="1">국민은행</option><option value="2">기업은행</option><option value="3">농협은행</option><option value="12">시티은행</option><option value="15">신한은행</option><option value="13">우리은행</option><option value="14">우체국은행</option><option value="8">제일은행</option><option value="11">하나은행</option></select>
            </td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                예금주 확인</td>
            <td bgcolor="#ffffff">
                ㈜알라딘커뮤니케이션</td>
        </tr>
        <tr>
            <td class="popup" height="35" style="padding-left: 14px;" width="27%" bgcolor="#fce4ea">
                입금자 성명</td>
            <td bgcolor="#ffffff">
                <input class="form" id="BankSender" type="text" maxlength="20" size="20" value="" name="BankSender"></td>
        </tr>
    </tbody></table>
    
    
</div>