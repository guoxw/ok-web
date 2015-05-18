function btnSaveAndReturnClick(){
	C.crud.submit(function () { Toast.success('保存成功！'); setTimeout('TabWin.close()', 500); });
}
function btnSaveClick(){
	C.crud.submit();
}
function btnReturnClick(){
	TabWin.close();
}





