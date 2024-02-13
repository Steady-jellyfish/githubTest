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
<title>Milestones.jsp</title>
<link rel="stylesheet" type="text/css" href="template.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{
		resetMilestones();
		
		$("input[name='checkList']").change(function()
		{
			perfectionCalc(clickMile, selectClass);
			
		});
		
		$(".firstMile").click(function()
		{
			 //alert("확인");
			
			 resetMilestones();
			 $(".btnItem").animate({
				height: "toggle"				 
			 }, "slow");
			 
			// 클릭한 마일스톤에 해당하는 체크리스트 선택자명을 변수에 저장
			clickMile = ".milestonesCheckList1";
			inputId = "#addText1";
			 
			$(this).css("background-image", "url(img/Click.png)");
			$(".firstText").css("color", "#f5511e");
			$(".milestonesCheckList1").animate({
				height: "toggle"
				
			}, "slow");
			$(".milestonesCheckList1").css("display", "block");
			
			//alert($(clickMile + ">.inputListArea").children().eq(0).attr("name"));
			//--==>> 클라이언트가 현재 클릭한 마일스톤의 자식인
			//       세부 목표 추가 엘리먼트(inputListArea)를 가져와서
			//       첫 번째 자식인 입력창의 name 속성값을 가져왔다.
			//--==>> fourth
			selectClass = "." + $(clickMile + ">.inputListArea").children().eq(0).attr("name");
			
			
			//============[ 완성도 퍼센트(%) 변경 ]===============
			perfectionCalc(clickMile, selectClass);
			//=====================================================
			
		});
		
		$(".secondMile").click(function()
		{
			//alert("확인");
			
			resetMilestones();
			 $(".btnItem").animate({
					height: "toggle"				 
				 }, "slow");
			
			 // 클릭한 마일스톤에 해당하는 체크리스트 선택자명을 변수에 저장
			 clickMile = ".milestonesCheckList2";
			 inputId = "#addText2";
						
			$(this).css("background-image", "url(img/Click.png)");
			$(".secondText").css("color", "#f5511e");
			$(".milestonesCheckList2").animate({
				height: "toggle"
				
			}, "slow");
			$(".milestonesCheckList2").css("display", "block");
			
			//alert($(clickMile + ">.inputListArea").children().eq(0).attr("name"));
			//--==>> 클라이언트가 현재 클릭한 마일스톤의 자식인
			//       세부 목표 추가 엘리먼트(inputListArea)를 가져와서
			//       첫 번째 자식인 입력창의 name 속성값을 가져왔다.
			//--==>> fourth
			selectClass = "." + $(clickMile + ">.inputListArea").children().eq(0).attr("name");
			
			
			//============[ 완성도 퍼센트(%) 변경 ]===============
			perfectionCalc(clickMile, selectClass);
			//=====================================================
				
		});
		
		$(".thirdMile").click(function()
		{
			//alert("확인");
			
			resetMilestones();
			 $(".btnItem").animate({
					height: "toggle"				 
				 }, "slow");
			
			 // 클릭한 마일스톤에 해당하는 체크리스트 선택자명을 변수에 저장
			 clickMile = ".milestonesCheckList3";
			 inputId = "#addText3";
			
			$(this).css("background-image", "url(img/Click.png)");
			$(".thirdText").css("color", "#f5511e");
			$(".milestonesCheckList3").animate({
				height: "toggle"
				
			}, "slow");
			$(".milestonesCheckList3").css("display", "block");
			
			//alert($(clickMile + ">.inputListArea").children().eq(0).attr("name"));
			//--==>> 클라이언트가 현재 클릭한 마일스톤의 자식인
			//       세부 목표 추가 엘리먼트(inputListArea)를 가져와서
			//       첫 번째 자식인 입력창의 name 속성값을 가져왔다.
			//--==>> fourth
			selectClass = "." + $(clickMile + ">.inputListArea").children().eq(0).attr("name");
			
			//============[ 완성도 퍼센트(%) 변경 ]===============
			perfectionCalc(clickMile, selectClass);
			//=====================================================
			
		});
		
		$(".fourthMile").click(function()
		{
			//alert("확인");
			
			resetMilestones();
			 $(".btnItem").animate({
					height: "toggle"				 
				 }, "slow");
			 inputId = "#addText4";
			
			 // 클릭한 마일스톤에 해당하는 체크리스트 선택자명을 변수에 저장
			 clickMile = ".milestonesCheckList4";
			
			$(this).css("background-image", "url(img/Click.png)").delay(2000);
			
			$(".fourthText").css("color", "#f5511e");
			$(".milestonesCheckList4").animate({
				height: "toggle"
				
			}, "slow");
			$(".milestonesCheckList4").css("display", "block");
			
			//alert($(clickMile + ">.inputListArea").children().eq(0).attr("name"));
			//--==>> 클라이언트가 현재 클릭한 마일스톤의 자식인
			//       세부 목표 추가 엘리먼트(inputListArea)를 가져와서
			//       첫 번째 자식인 입력창의 name 속성값을 가져왔다.
			//--==>> fourth
			selectClass = "." + $(clickMile + ">.inputListArea").children().eq(0).attr("name");
			
			//============[ 완성도 퍼센트(%) 변경 ]===============
			perfectionCalc(clickMile, selectClass);
			//=====================================================
				
			
		});
		
		
		//=======[ 활동량 불빛이 붉은 색인 멤버 판별 ]===========
			
		var childLen = ($(".memberList").children().length)/2;
		//alert(childLen);
		//--==>> 12
		
		for (var i=1; i<=childLen; i++)
		{
			//alert($("#mem" + i).css("color"));
			// 글자 색상이 곧 활동량 불빛이므로... 색상 확인.
			// red
			//--==>> rgb(255, 0, 0)
			// orange
			//--==>> rgb(255, 165, 0)
			// green
			//--==>> rgb(0, 128, 0)
			
			var activityColor = $("#mem" + i).css("color");
			
			if (activityColor == "rgb(255, 0, 0)")
			{
				// 빨간 불빛인 회원의 닉네임 alert 창 출력
				//alert($("#mem" + i).text());
				//--==>> 강혜성, 이윤수, 사윤수
				
				$("#mem" + i).after("<div class='warning'>강퇴가능!</div><br>");
				
			}
		}
		//====================================================
		
		//=====[ 마일스톤의 세부목표 추가 JQuery 처리 ]=======
		
		// 세부 목표 추가 버튼 클릭했을 때만 입력 칸이 뜨도록 처리.
		$(".btnItem").click(function()
		{
			// 어떤 대분류가 클릭된 상태인지 확인
			//alert($(".milestonesArea").children().eq(1).css("background-image"));
			//--> 이미지로 판별하려 했는데... 이미지가 링크형태로 돼서 길어짐
			//--> [url("http://localhost:3306/ViewPages/img/Click.png")]
			
			// 클릭이 될 때마다 대분류 텍스트 값을 변수에 저장함.
			//alert(clickMile);
			//--> .milestonesCheckList4
			//    이를 이용하여... 나중에 새롭게 입력된 세부항목을 추가할 때
			//    클라이언트가 클릭한 마일스톤 대분류에 속하도록 해 줄 수 있을 것 같다.
			
			
			
			/*===== [ 스크롤바 이동 ] ====== */
			$(".inputListArea").toggle('slow');
			
			//alert(inputId);
			//--==>> addList3
			//       마일스톤 대분류를 클릭했을 때 저장해 두었던
			//       세부목표 입력창의 아이디 텍스트를 가져온다.
			
			var addListId = "#" + $(".inputListArea").children().eq(0).attr("id");
			
			// 추가 세부목표 입력창 위치로 스크롤을 이동시킨다. 500ms 의 속도
			$(".checkListBox").animate( { scrollTop : $(inputId).offset().top }, 500 );
			
		});
		
		

		$(".submitBtn").click(function()
		{
			// 테스트
			//alert("확인");
			
			//alert($(this).parent().children().eq(0).attr("id"));
			//--==>> addList2
			//       입력 완료 버튼(submitBtn)의 부모 노드(.inputListArea)에서
			//       첫 번째 자식을 선택하여 [input type="text"] 객체의 id 얻어내기
			
			
			
			var id = "#" + $(this).parent().children().eq(0).attr("id");
			
			//alert(id);
			//--==> addList2
			
			//alert($(this).parent().children().eq(0).attr("name"));
			//--==> first
			
			var classVal = $(this).parent().children().eq(0).attr("name");
			//alert(classVal);
			
			
			var params = "addText=" + $.trim($(id).val()) 
					  + "&classVal=" + $.trim(classVal);
			
			$.ajax({
				
				type:"POST"
				, url:"AjaxOk.jsp"
				, data:params
				, success:function(args)
				{
					//alert(args);
					//--==>> AjaxOk.jsp 의 html 이 제대로 넘어오는 것을 확인.
					/*
						<label>
							<input class="fourth" type="checkbox" value="4">
							<span id="listText">안녕하세요?</span><br>
						</label>
					*/
					$(".inputListArea").hide();
					$(".addCheckbox").val("");
					
					$(clickMile).prepend(args);
					//============[ 완성도 퍼센트(%) 변경 ]===============
					perfectionCalc(clickMile, selectClass);
					//=====================================================
				}
				
				
			});// end $.ajax({...});
			
			$(".checkListBox").animate({scrollTop : 0}, 200);
			
			
		});// end $(".submitBtn").click(function()
				
		
		
				
	});// end $(document).ready(function()
	
	
	function resetMilestones()
	{
		// 세부 목표 추가 버튼 숨기기
		$(".btnItem").hide();
		
		// 세부 목표 추가 입력창 숨기기
		$(".inputListArea").hide();
		
		// 전체 체크 리스트 항목들 숨기기
		$(".milestonesCheckList1").css("display", "none");
		$(".milestonesCheckList2").css("display", "none");
		$(".milestonesCheckList3").css("display", "none");
		$(".milestonesCheckList4").css("display", "none");
		
		// 마일스톤 상단의 이미지 모두 클릭되지 않았을 때로 변경
		$(".firstMile").css("background-image", "url(img/noneClick.png)");
		$(".secondMile").css("background-image", "url(img/noneClick.png)");
		$(".thirdMile").css("background-image", "url(img/noneClick.png)");
		$(".fourthMile").css("background-image", "url(img/noneClick.png)");
	
		// 마일스톤 상단의 이미지 속 텍스트 모두 클릭되지 않았을 때 색상으로 변경
		$(".firstText").css("color", "#078897");
		$(".secondText").css("color", "#078897");
		$(".thirdText").css("color", "#078897");
		$(".fourthText").css("color", "#078897");
	}
	
	
	//===[ 완성도 % 가 체크된 개수에 따라 변경되도록 하는 처리 ]===
	function perfectionCalc(totalClass, checkedClass)
	{
		var totalLength = $(totalClass).children().length - 1;
		// 추가 항목 입력창까지 자식 노드 개수로 취급되므로 -1 을 수행.
		var checkedLength = $(checkedClass + ":checked").length;
		//alert("총 개수 : " + totalLength + ", 선택된 개수 : " + checkedLength);
		
		// #perfectValue -- 완성도
		var perfectRatio = ((checkedLength / totalLength) * 100).toFixed(1);
		var result = perfectRatio.toString() + "%";
		
		$("#perfectValue").text(result);
		
	}

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

/* 전체 메인 페이지 div */
.main
{
	display: flex;
}

/* div 테두리 */
div
{
	/* border: 1px solid red; */
}

/*================[마일스톤]================*/

/* 마일스톤을 감싸는 div */
.milestonesBox
{
	padding: 10px;
	/* border: 3px solid blue; */
}

/* 마일스톤 영역 */
.milestonesArea
{
	/* border: 1px solid gray; */
	text-align: center;
	margin: 0 auto;
	display: flex;
	width: 1310px;
	height: 240px;
}

/* 마일스톤 상단 화살표 도형 이미지 */
.mileImg
{
	width: 300px;
}

/*========================================*/

/* 첫 번째 마일스톤 대분류 [계획] */
.firstMile
{
	/* border: 1px solid red; */
	width: 300px;
	height: 200px;
	margin: 20px 0 0 20px;
	line-height: 160px;
	background-image: url("img/noneClick.png");
	background-repeat: no-repeat;
	background-size: 300px;
	
}

/* 첫 번째 마일스톤 위에 텍스트 넣기 */
.firstText
{
	width: 300px;
	margin-left: 15px;
	font
}

/*========================================*/

/* 두 번째 마일스톤 대분류 [설계] */
.secondMile
{
	/* border: 1px solid red; */
	width: 300px;
	height: 200px;
	margin: 20px 0 0 20px;
	line-height: 160px;
	background-image: url("img/noneClick.png");
	background-repeat: no-repeat;
	background-size: 300px;
}

/* 두 번째 마일스톤 위에 텍스트 넣기 */
.secondText
{
	width: 300px;
	margin-left: 15px;
	
}

/*========================================*/

/* 세 번째 마일스톤 대분류 [진행] */
.thirdMile
{
	/* border: 1px solid red; */
	width: 300px;
	height: 200px;
	margin: 20px 0 0 20px;
	line-height: 160px;
	background-image: url("img/noneClick.png");
	background-repeat: no-repeat;
	background-size: 300px;
}

/* 세 번째 마일스톤 위에 텍스트 넣기 */
.thirdText
{
	width: 300px;
	margin-left: 15px;	
}

/*========================================*/

/* 네 번째 마일스톤 대분류 [프로젝트 완료] */
.fourthMile
{
	/* border: 1px solid red; */
	width: 300px;
	height: 200px;
	margin: 20px 0 0 20px;
	line-height: 160px;
	background-image: url("img/noneClick.png");
	background-repeat: no-repeat;
	background-size: 300px;
}

/* 네 번째 마일스톤 위에 텍스트 넣기 */
.fourthText
{
	width: 300px;
	margin-left: 15px;
}

/*========================================*/



/* 마일스톤 각각의 대분류에 해당하는 세부 목표 영역 */
.milestonesContentBox
{
	/* border: 2px solid red; */
	width: 1310px;
	height: 900px;
	text-align: center;
	margin: 0 auto;
	background-image: url("img/MileStones_Content.png");
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center;
	overflow: auto;
}

/* 마일스톤의 완성도를 감싸는 div */
.perfectionBox
{
	/* border: 1px solid blue; */
	width: 340px;
	height: 60px;
	text-align: left;
	font-weight: bold;	
	margin: 20px 0px 0px 30px;
}

/* 마일스톤의 완성도 div */
.perfection
{
	/* border: 1px solid blue; */
	width: 300px;
	height: 55px;
	background-image: url("img/flag.png");
	background-repeat: no-repeat;
	background-size: contain;
	margin: 0px 10px 0px 20px;
	
}

/* 마일스톤의 완성도 텍스트 */
#perfectText
{
	font-size: 20px;
	/* border: 1px solid purple; */
	line-height:60px;
	margin: 0 0 0 60px;
}

/* 마일스톤의 완성도 % 값 */
#perfectValue
{
	font-size: 25px;
	/* border: 1px solid green; */
	line-height:60px;
	margin: 0 0 0 10px;
	text-shadow: 2px 2px 2px gray;
	color: #fd374c;
}

/* 모든 체크리스트를 감싸는 div */
.checkListBox
{
	width: 1240px;
	height: 585px;
	/* border: 3px solid aqua; */
	margin: 100px 30px 30px 30px;
	overflow-y: scroll;
	
	/* 스크롤바 숨기기 - IE, Edge, Firefox */
	 -ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
}

/* 마일스톤 스크롤바 숨기기 - Chrome */
.checkListBox::-webkit-scrollbar
{
    display: none; /* Chrome, Safari, Opera*/
}


/* 마일스톤 하단 체크리스트 영역 - 계획 클릭 */
.milestonesCheckList1
{
	font-size: 20px;
	text-align: left;
	/* border: 1px solid gray; */
	display: inline-block;
	background-image: linear-gradient(to top, #f0f8ff, white);

}

/* 마일스톤 하단 체크리스트 영역 - 설계 클릭 */
.milestonesCheckList2
{
	font-size: 20px;
	text-align: left;
	/* border: 1px solid gray; */
	background-image: linear-gradient(to top, #f0f8ff, white);
}
/* 마일스톤 하단 체크리스트 영역 - 진행 클릭*/
.milestonesCheckList3
{
	font-size: 20px;
	text-align: left;
	/* border: 1px solid gray; */
	background-image: linear-gradient(to top, #f0f8ff, white);
}
/* 마일스톤 하단 체크리스트 영역 - 프로젝트 완료 클릭 */
.milestonesCheckList4
{
	font-size: 20px;
	text-align: left;
	/* border: 1px solid gray; */
	background-image: linear-gradient(to top, #f0f8ff, white);
}

/* 마일스톤 세부목표 텍스트 */
#listText
{
	margin-bottom: 20px;
	color: gray;
	font-size: 20px;
}

/* 체크박스 */
input[type="checkBox"]
{
	/* 사각형 박스 크기 조절 */
	width: 40px;
	height: 40px;
	cursor: pointer;
	margin: 30px;
	text-align: center;
}


/* 새롭게 입력하는 마일스톤 항목 */
input[type="text"]
{
	width: 800px;
	height: 40px;
	cursor: pointer;
	margin: 30px;
	text-align: left;
	line-height: 2px;

}


/*================[멤버 리스트]================*/

/* 멤버 리스트를 감싸는 영역 div */
.memberListBox
{
	width: 400px;
	height: 400px;
	/* border: 2px solid blue; */
	margin: 150px 0 0 20px;
	background-image: url("img/MemberList.png");
	background-repeat: no-repeat;
	background-size: cover;
	
}

/* 멤버 리스트 영역 */
.memberListArea
{
	width: 260px;
	height: 320px;
	/* border: 1px solid red; */
	overflow: scroll;
	margin: 50px 10px 10px 20px;
	/* 스크롤바 숨기기 - IE, Edge, Firefox */
    -ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */

}

/* 멤버 리스트 스크롤바 숨기기 - Chrome */
.memberListArea::-webkit-scrollbar
{
    display: none; /* Chrome, Safari, Opera*/
}


/* 멤버 리스트 - 가로 스크롤 생성을 위함 */
.memberList
{
	width: 400px;
}


/* 멤버 리스트 중 하나의 항목 */
.oneMember
{
	display: flex;
	/* border: 1px solid gray; */
}

/* 멤버 프로필이 들어갈 영역 지정 */
#profile
{
	width: 60px;
	height: 60px;
	/* border: 1px solid blue; */
	border-radius: 50%;
	overflow: hidden;
	margin: 5px 0 5px 5px;
}

/* 멤버 프로필 이미지 삽입 */
.memberImg
{
	width: 60px;
	height: 60px;
	object-fit: cover;
}

/* 프로젝트 내 직위 아이콘 */
.positionIcon
{
	font-size: 30px;
	margin: 15px 0px 0px 5px;
}

/* 멤버 닉네임 */
.nickname
{
	margin: 25px 0px 25px 5px;
	font-size: 18px;
	font-weight: bold;
	color: orange;
}

/* 빨간 불빛인 멤버 경고문 */
.warning
{
	margin: 25px 0px 20px 8px;
	font-weight: bold;
	font-size: 18px;
	color: #c92f14;
	text-shadow: 1px 1px 1px #e3521a;
	background-color: #ffd617;
	padding: 1px;
	border-radius: 10%;
}

/* [빨간불] - 저번 주기에 업무 보고서 미제출 */
#mem2, #mem4, #mem5, #mem11
{
	color: red;
}

/* [초록불] - 이번 주기에 업무 보고서 제출 */
#mem7, #mem8, #mem9, #mem11
{
	color: green;
}

/*=======[ 버튼 설정 ]========  */

/* 전체 추가 설정 */
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

/* 세부 목표 추가 버튼 */
.btnItem
{
	width: 500px;
	height: 300px;
	/* border: 2px solid blue; */
}

/* 세부 목표 추가 텍스트 입력창 */
.addCheckbox
{
	font-size: 20px;
	border-radius: 5px;
	margin: 5px 0 5px 10px;
}
	
/******[ 버튼 CSS 설정들 ]*******/

.buttons
{
    margin: 10%;
    text-align: center;
}

.btn-hover
{
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
    width: 100px;
    height: 50px;
}

.btn-hover.color-10 {
    background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a , #FBB03B);
    box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
}

.addCheckbox:focus
{
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    background-image: linear-gradient(to right, #fbffc4, #c0f7b2, #b2f7de , #adc7f7);
  	color: #03899f;
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
	 
	
	<div class="milestonesBox">
		<div class="milestonesArea">
			
			<div class="firstMile animated tada"><h2 class="firstText">계획</h2></div>
			<div class="secondMile"><h2 class="secondText">설계</h2></div>
			<div class="thirdMile"><h2 class="thirdText">진행</h2></div>
			<div class="fourthMile"><h2 class="fourthText">프로젝트완료</h2></div>
		
		</div><!-- end .milestonesArea -->
		
		<div class="milestonesContentBox">
				<div class="perfectionBox">
					<div class="perfection">
						<span id="perfectText">완성도 : </span>
						<span id="perfectValue">
							<!-- 완성도 %가 선택한 대분류에 따라 변경됨. -->
						</span>
					</div><!-- end .perfection -->
				</div><!-- end perfectionBox -->
				<div class="checkListBox">
					<div class="milestonesCheckList1">
						<c:forEach var="i" begin="1" end="15" step="1">
							<label>
								<input name="checkList" class="first" type="checkbox"><span id="listText">계획${i }</span><br>
							</label>
						</c:forEach>
						<!--=== 체크 리스트 추가 테스트 ===-->
							<div class="inputListArea">
								<input type="text" class="addCheckbox" id="addText1" name="first">
								<button type="submit" class="submitBtn btn-hover color-1">입력 완료</button>
	  						</div>
						<!--===============================-->
					</div><!-- end .milestonesCheckList1 -->
					<div class="milestonesCheckList2">
						<c:forEach var="i" begin="1" end="7" step="1">
							<label>
								<input name="checkList" class="second" type="checkbox"><span id="listText">설계${i }</span><br>
							</label>
						</c:forEach>
						<!--=== 체크 리스트 추가 테스트 ===-->
							<div class="inputListArea">
								<input type="text" class="addCheckbox" id="addText2" name="second">
								<button type="submit" class="submitBtn btn-hover color-1">입력 완료</button>
	  						</div>
						<!--===============================-->
					</div><!-- end .milestonesCheckList2 -->
					<div class="milestonesCheckList3">
						<c:forEach var="i" begin="1" end="8" step="1">
							<label>
								<input name="checkList" class="third" type="checkbox"><span id="listText">진행${i }</span><br>
							</label>
						</c:forEach>
						<!--=== 체크 리스트 추가 테스트 ===-->
							<div class="inputListArea">
								<input type="text" class="addCheckbox" id="addText3" name="third">
								<button type="submit" class="submitBtn btn-hover color-1">입력 완료</button>
	  						</div>
						<!--===============================-->
					</div><!-- end .milestonesCheckList3 -->
					<div class="milestonesCheckList4">
						<c:forEach var="i" begin="1" end="5" step="1">
							<label>
								<input name="checkList" class="fourth" type="checkbox"><span id="listText">프로젝트완료${i }</span><br>
							</label>
						</c:forEach>
						<!--=== 체크 리스트 추가 테스트 ===-->
							<div class="inputListArea">
								<input type="text" class="addCheckbox" id="addText4" name="fourth">
								<button type="submit" class="submitBtn btn-hover color-1">입력 완료</button>
	  						</div>
						<!--===============================-->
					</div><!-- end .milestonesCheckList4 -->
				</div><!-- end .checkListBox -->
			<div class="buttonBox">
			
			<!-- Button Area -->
	    	<button type="button" class="btnItem btn-hover color-10">세부 목표 추가</button>
			<!--==================-->
				
			</div>
		</div><!-- end .milestonesContentBox -->
	</div><!-- end .milestonesBox -->
	
	<div class="memberListBox">
		<div class="memberListArea">
			<div class="memberList">
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						👑
					</div>
					<span class="nickname" id="mem1">강혜성</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname" id="mem2">빡빡혜성1호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem3">빡빡혜성2호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem4">빡빡혜성3호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem5">빡빡혜성4호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem6">빡빡혜성5호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem7">빡빡혜성6호</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem8">2윤수</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem9">3윤수</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem10">울님</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem11">BBK</span>
				</div><br><!-- end .oneMember -->
				<div class="oneMember">
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<div class="positionIcon">
						🌟
					</div>
					<span class="nickname"  id="mem12">길님</span>
				</div><br><!-- end .oneMember -->
			</div><!-- end .memberList -->
		</div><!-- end .memberListArea -->
	</div><!-- end .memberListBox -->
</div><!-- end .main -->

</body>
</html>