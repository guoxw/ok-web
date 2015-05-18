<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Message : ${message}</h1>
	<textarea id="textarea" rows="1" style="padding: 2px" onkeyup="this.style.height=this.scrollHeight-4+'px'"></textarea>

<script type="text/javascript" src="<%= request.getContextPath() %>/resources/lib/jquery-1.8.3.js"></script>

<script type="text/javascript">


var f = (function (){
	var index = 0;
	
	/*
	get = function () {
		return index;
	}
	*/
	
	return function () {
		alert(++index);
	};
	
})();

f();
f();
//alert(get());
f();


var o = {
	array : ['haha'],
	fun : (function (){
			var index = 0;

			return function () {
				alert(++index);
				
				alert(this.array);
			};
			
		})()
	
}

//var f1 = 

o.fun();

o.array.push('hehe');
o.fun();
/*
get().push(1);
get().push(2);
f1();
*/

$('#textarea').val("sdfsdf\r\ndsfsdf");
</script>
</body>
</html>