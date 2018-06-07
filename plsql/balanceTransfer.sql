declare 
v_senderAcNo number(4);
v_receiverAcNo number(4);
v_transferAmt number(6);
v_bal number(6);

begin
v_senderAcNo:=&sender_account_number;
v_receiverAcNo:=&receiver_account_number;
v_transferAmt:=&transfer_amount;
select bal into v_bal from accounts where accno=v_senderAcNo;
if v_transferAmt>v_bal then
	dbms_output.put_line('Fund can not be transfered');
else	
	update accounts set bal=bal-v_transferAmt where accno=v_senderAcNo;
	update accounts set bal=bal+v_transferAmt where accno=v_receiverAcNo;
	dbms_output.put_line(v_transferAmt||'	rupees transfered to account'||v_receiverAcNo);
end if;
commit;
end;
/