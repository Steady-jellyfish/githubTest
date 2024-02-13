<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alarm.jsp</title>
<link rel="stylesheet" type="text/css" href="template.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{
		$(".alarmContentBox").hide();
		
		$(".alarmIconBox").click(function()
		{
			$(".alarmContentBox").slideToggle(1000);
			$(".alarmContentBox").css("display", "block");
		});
		
		//alert($(".alarmContent").children().length);
		//--==>> 15
		
		listLen = $(".alarmContent").children().length;
		
		$(".alarmCount").text(listLen);
		
		$("p").click(function()
		{
			//alert("확인");
			$(this).hide();
			listLen = listLen - 1;
			$(".alarmCount").text(listLen);
			
			if (listLen == 0)
			{
				$(".alarmContent").append("<p>🌟모든 알림을 확인하셨습니다.🌟</p>");
				
			}
		});
		
	});

</script>
<style type="text/css">

@font-face
{
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}

* {font-family: 'S-CoreDream-3Light';}


div
{
	/* border: 1px solid gray; */
}

/* 알람 기능 전체를 감싸는 div */
.alarmBox
{
	width: 320px;
	height: 450px;
	float: right;
	/* border: 3px solid green; */
}

/* 알람 헤더 - 아이콘, 알람 개수 */
.alarmHeader
{
	width: 100px;
	height: 100px;
	/* border: 2px solid red; */
	float: right;
	padding: 10px;
}

/* 알람 개수 */
.alarmCount
{
	font-size: 13px;
	width: 20px;
	height: 20px;
	position: absolute;
	margin: 0px 3px 2px 80px;
	text-align: center;
	font-weight: bold;
	z-index: 1;
	border-radius: 50%;
	background-color: rgb(239 108 31);
	color: white;
	padding: 4px 4px 3px 3px;
	text-shadow: 2px 2px 2px gray;
}

/* 알람 아이콘이 있는 영역 */
.alarmIconBox
{
	position: relative;
	width: 60px;
	height: 60px;
	overflow: hidden;
	border-radius: 50%;
	padding: 10px;
	/* border: 1px solid blue; */
	float: right;
}


/* 알람 이미지 삽입 */
.icon
{
	width: 60px;
	height: 60px;
	object-fit: cover;
}

/* 알람 리스트 이미지를 넣어줄 div */
.alarmContentBox
{
	/* border: 2px solid orange;  */
	width: 320px;
	height: 420px;
	float: right;
	position: relative;
}

/* 알람 리스트를 감싸는 div */
.alarmContentList
{
	/* border: 1px solid blue; */
	overflow-y: scroll;
	width: 270px;
	height: 330px;
	/* 스크롤바 숨기기 - IE, Edge, Firefox */
	 -ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
    
    position: absolute;
	top: 54px;
	left: 14px;
	padding: 10px;
	text-align: center;
}

/* 알람 스크롤바 숨기기 - Chrome */
.alarmContentList::-webkit-scrollbar
{
    display: none; /* Chrome, Safari, Opera*/
}


/* 알람 항목들 내용 리스트 */
.alarmContent
{
	width: 250px;
	height: 320px;
	/* border: 2px solid aqua; */
	margin: 0px 10px 20px 10px;
	position: absolute;
	text-align: center;
}

/* 알람 항목들 세부 내용 텍스트 */
.alarmContent>p
{
	border-radius: 10px;
	font-weight: bold;
	color: brown;
	
}

/* 알람 리스트 배경 이미지 */
.listImg
{
	width: 320px;
	height: 420px;
	/* border: 1px solid red; */
	vertical-align: middle;
}



</style>

</head>
<body>

<nav class="banner">배너</nav>
<div class="sidebar">
	<div class="emptymenu"></div>
	
		<div class="menulist"><p class="menutext">진행중인 프로젝트1</p></div>
		<div class="menulist"><p class="menutext">진행중인 프로젝트2</p></div>
		<div class="menulist"><p class="menutext">진행중인 프로젝트3</p></div>
		<div class="menulist"><p class="menutext">진행중인 프로젝트4</p></div>
</div>

<div class="main">

	<div class="alarmBox">
				
		<div class="alarmHeader">
			
			<div class="alarmCount"><!-- JQuery로 동적 알림 개수 삽입 --></div>
			<div class="alarmIconBox">
				<img class="icon" src="img/bell.jpg">
			</div><!-- .end alarmIconBox -->
			
		</div><!-- end .alarmHeader -->
		
		
		<div class="alarmContentBox">
		
			<img class="listImg" src="img/AlarmList2.png">
			<div class="alarmContentList">
				<div class="alarmContent">
					<p>할 일은 무엇입니다.</p>
					<p>안녕하세요?</p>
					<p>오늘 할일이 많으시네요.</p>
					<p>가데이터입니다.</p>
					<p>알림은 무엇일까요?</p>
					<p>알림은 숭고한 것입니다.</p>
					<p>하핫 너무 졸려요</p>
					<p>으아아아악</p>
					<p>떡볶이먹구싶다</p>
					<p>하 넘졸려 ㅠㅠ</p>
					<p>뜨끈한 곰국</p>
					<p>두근두근</p>
					<p>암어쎄비지</p>
					<p>지지짐살라빔짐살라짐살라빔</p>
					<p>24시간이 모오자라</p>
				</div><!-- end .alarmContent -->
			</div><!-- end .alarmContentList -->
		</div><!-- end .alarmContentBox -->
		
	</div><!-- end .alarmBox -->

</div>

</body>
</html>