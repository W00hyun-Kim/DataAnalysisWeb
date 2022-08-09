<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="Cal.Calculate"%>
<%@page import="Parsing.Parsing"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	String month = request.getParameter("month");
	String realFolder = "";
	String saveFolder = "fileSave"; // out폴더에 fileSave 폴더 생성
	String encType = "UTF-8";
	int maxSize = 5*1024*1024; // 최대 업로드 5mb

	ServletContext context = request.getServletContext();
	realFolder = context.getRealPath(saveFolder);
//	out.println("the realpath is: " + realFolder + "<br>");
	
	Parsing parse = new Parsing();
	
	Calculate cal = new Calculate();
	
	try {
	    MultipartRequest multi = null;

	    multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	    Enumeration files = multi.getFileNames();
		
	    String readFileName = "";
	    String name = (String)files.nextElement();
	    String filename = multi.getFilesystemName(name);
	    readFileName = realFolder +"\\"+ filename;

		parse.parsing(readFileName);
%> 

<html>
  <head>
    <meta charset="utf-8">
    <title>자치구별 기술통계표</title>
	<h2 width=500px; style="margin-left:280px;"> 서울특별시 자치구별 기술통계표</h2>

	<table width=500px; border="1" style="text-align:center; margin-left:200px;">
		<th>시군구</th>
		<th>평균(만원)</th>
		<th>중앙값(만원)</th>
		<th>최대값(만원)</th>
		<th>최소값(만원)</th>
		<tr>
			<td>강남구</td><td><%=cal.getAvg(parse.gangnam)%></td><td><%=cal.getMedian(parse.gangnam)%></td><td><%=cal.getMax(parse.gangnam)%></td><td><%=cal.getMin(parse.gangnam)%></td>
		</tr>
		<tr>
			<td>강동구</td><td><%=cal.getAvg(parse.gangdong)%></td><td><%=cal.getMedian(parse.gangdong)%></td><td><%=cal.getMax(parse.gangdong)%></td><td><%=cal.getMin(parse.gangdong)%></td>
		</tr>
		<tr>
			<td>강북구</td><td><%=cal.getAvg(parse.gangbuk)%></td><td><%=cal.getMedian(parse.gangbuk)%></td><td><%=cal.getMax(parse.gangbuk)%></td><td><%=cal.getMin(parse.gangbuk)%></td>
		</tr>
		<tr>
			<td>강서구</td><td><%=cal.getAvg(parse.gangseo)%></td><td><%=cal.getMedian(parse.gangseo)%></td><td><%=cal.getMax(parse.gangseo)%></td><td><%=cal.getMin(parse.gangseo)%></td>
		</tr>
		<tr>
			<td>관악구</td><td><%=cal.getAvg(parse.gwanak)%></td><td><%=cal.getMedian(parse.gwanak)%></td><td><%=cal.getMax(parse.gwanak)%></td><td><%=cal.getMin(parse.gwanak)%></td>
		</tr>
		<tr>
			<td>광진구</td><td><%=cal.getAvg(parse.gwangJin)%></td><td><%=cal.getMedian(parse.gwangJin)%></td><td><%=cal.getMax(parse.gwangJin)%></td><td><%=cal.getMin(parse.gwangJin)%></td>
		</tr>
		<tr>
			<td>구로구</td><td><%=cal.getAvg(parse.guro)%></td><td><%=cal.getMedian(parse.guro)%></td><td><%=cal.getMax(parse.guro)%></td><td><%=cal.getMin(parse.guro)%></td>
		</tr>
		<tr>
			<td>금천구</td><td><%=cal.getAvg(parse.guemcheon)%></td><td><%=cal.getMedian(parse.guemcheon)%></td><td><%=cal.getMax(parse.guemcheon)%></td><td><%=cal.getMin(parse.guemcheon)%></td>
		</tr>
		<tr>
			<td>노원구</td><td><%=cal.getAvg(parse.nowon)%></td><td><%=cal.getMedian(parse.nowon)%></td><td><%=cal.getMax(parse.nowon)%></td><td><%=cal.getMin(parse.nowon)%></td>
		</tr>
		<tr>
			<td>도봉구</td><td><%=cal.getAvg(parse.dobong)%></td><td><%=cal.getMedian(parse.dobong)%></td><td><%=cal.getMax(parse.dobong)%></td><td><%=cal.getMin(parse.dobong)%></td>
		</tr>
		<tr>
			<td>동대문구</td><td><%=cal.getAvg(parse.dongdaemun)%></td><td><%=cal.getMedian(parse.dongdaemun)%></td><td><%=cal.getMax(parse.dongdaemun)%></td><td><%=cal.getMin(parse.dongdaemun)%></td>
		</tr>
		<tr>
			<td>동작구</td><td><%=cal.getAvg(parse.dongjak)%></td><td><%=cal.getMedian(parse.dongjak)%></td><td><%=cal.getMax(parse.dongjak)%></td><td><%=cal.getMin(parse.dongjak)%></td>
		</tr>
		<tr>
			<td>마포구</td><td><%=cal.getAvg(parse.mapo)%></td><td><%=cal.getMedian(parse.mapo)%></td><td><%=cal.getMax(parse.mapo)%></td><td><%=cal.getMin(parse.mapo)%></td>
		</tr>
		<tr>
			<td>서대문구</td><td><%=cal.getAvg(parse.seodaemun)%></td><td><%=cal.getMedian(parse.seodaemun)%></td><td><%=cal.getMax(parse.seodaemun)%></td><td><%=cal.getMin(parse.seodaemun)%></td>
		</tr>
		<tr>
			<td>서초구</td><td><%=cal.getAvg(parse.seocho)%></td><td><%=cal.getMedian(parse.seocho)%></td><td><%=cal.getMax(parse.seocho)%></td><td><%=cal.getMin(parse.seocho)%></td>
		</tr>
		<tr>
			<td>성동구</td><td><%=cal.getAvg(parse.seongdong)%></td><td><%=cal.getMedian(parse.seongdong)%></td><td><%=cal.getMax(parse.seongdong)%></td><td><%=cal.getMin(parse.seongdong)%></td>
		</tr>
		<tr>
			<td>성북구</td><td><%=cal.getAvg(parse.seongbuk)%></td><td><%=cal.getMedian(parse.seongbuk)%></td><td><%=cal.getMax(parse.seongbuk)%></td><td><%=cal.getMin(parse.seongbuk)%></td>
		</tr>
		<tr>
			<td>송파구</td><td><%=cal.getAvg(parse.songpa)%></td><td><%=cal.getMedian(parse.songpa)%></td><td><%=cal.getMax(parse.songpa)%></td><td><%=cal.getMin(parse.songpa)%></td>
		</tr>
		<tr>
			<td>양천구</td><td><%=cal.getAvg(parse.yangcheon)%></td><td><%=cal.getMedian(parse.yangcheon)%></td><td><%=cal.getMax(parse.yangcheon)%></td><td><%=cal.getMin(parse.yangcheon)%></td>
		</tr>
		<tr>
			<td>영등포구</td><td><%=cal.getAvg(parse.yeongdeungpo)%></td><td><%=cal.getMedian(parse.yeongdeungpo)%></td><td><%=cal.getMax(parse.yeongdeungpo)%></td><td><%=cal.getMin(parse.yeongdeungpo)%></td>
		</tr>
		<tr>
			<td>용산구</td><td><%=cal.getAvg(parse.yongsan)%></td><td><%=cal.getMedian(parse.yongsan)%></td><td><%=cal.getMax(parse.yongsan)%></td><td><%=cal.getMin(parse.yongsan)%></td>
		</tr>
		<tr>
			<td>은평구</td><td><%=cal.getAvg(parse.eunpyeong)%></td><td><%=cal.getMedian(parse.eunpyeong)%></td><td><%=cal.getMax(parse.eunpyeong)%></td><td><%=cal.getMin(parse.eunpyeong)%></td>
		</tr>
		<tr>
			<td>종로구</td><td><%=cal.getAvg(parse.jongro)%></td><td><%=cal.getMedian(parse.jongro)%></td><td><%=cal.getMax(parse.jongro)%></td><td><%=cal.getMin(parse.jongro)%></td>
		</tr>
		<tr>
			<td>중구</td><td><%=cal.getAvg(parse.junggu)%></td><td><%=cal.getMedian(parse.junggu)%></td><td><%=cal.getMax(parse.junggu)%></td><td><%=cal.getMin(parse.junggu)%></td>
		</tr>
		<tr>
			<td>중랑구</td><td><%=cal.getAvg(parse.jungrang)%></td><td><%=cal.getMedian(parse.jungrang)%></td><td><%=cal.getMax(parse.jungrang)%></td><td><%=cal.getMin(parse.jungrang)%></td>
		</tr>
	</table>
	</div>
	
    <!-- google charts -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() {
			var data = google.visualization.arrayToDataTable ([
				['시군구', '평균', '중간값', '최대값', '최소값'],
				['강남구', <%=cal.getAvg(parse.gangnam)%>,<%=cal.getMedian(parse.gangnam)%>,<%=cal.getMax(parse.gangnam)%>,<%=cal.getMin(parse.gangnam)%>],
				['강동구', <%=cal.getAvg(parse.gangdong)%>,<%=cal.getMedian(parse.gangdong)%>,<%=cal.getMax(parse.gangdong)%>,<%=cal.getMin(parse.gangdong)%>],
				['강북구', <%=cal.getAvg(parse.gangbuk)%>,<%=cal.getMedian(parse.gangbuk)%>,<%=cal.getMax(parse.gangbuk)%>,<%=cal.getMin(parse.gangbuk)%>],
				['강서구', <%=cal.getAvg(parse.gangseo)%>,<%=cal.getMedian(parse.gangseo)%>,<%=cal.getMax(parse.gangseo)%>,<%=cal.getMin(parse.gangseo)%>],
				['관악구', <%=cal.getAvg(parse.gwanak)%>,<%=cal.getMedian(parse.gwanak)%>,<%=cal.getMax(parse.gwanak)%>,<%=cal.getMin(parse.gwanak)%>],
				['광진구', <%=cal.getAvg(parse.gwangJin)%>,<%=cal.getMedian(parse.gwangJin)%>,<%=cal.getMax(parse.gwangJin)%>,<%=cal.getMin(parse.gwangJin)%>],
				['구로구', <%=cal.getAvg(parse.guro)%>,<%=cal.getMedian(parse.guro)%>,<%=cal.getMax(parse.guro)%>,<%=cal.getMin(parse.guro)%>],
				['금천구', <%=cal.getAvg(parse.guemcheon)%>,<%=cal.getMedian(parse.guemcheon)%>,<%=cal.getMax(parse.guemcheon)%>,<%=cal.getMin(parse.guemcheon)%>],
				['노원구', <%=cal.getAvg(parse.nowon)%>,<%=cal.getMedian(parse.nowon)%>,<%=cal.getMax(parse.nowon)%>,<%=cal.getMin(parse.nowon)%>],
				['도봉구', <%=cal.getAvg(parse.dobong)%>,<%=cal.getMedian(parse.dobong)%>,<%=cal.getMax(parse.dobong)%>,<%=cal.getMin(parse.dobong)%>],
				['동대문구', <%=cal.getAvg(parse.dongdaemun)%>,<%=cal.getMedian(parse.dongdaemun)%>,<%=cal.getMax(parse.dongdaemun)%>,<%=cal.getMin(parse.dongdaemun)%>],
				['동작구', <%=cal.getAvg(parse.dongjak)%>,<%=cal.getMedian(parse.dongjak)%>,<%=cal.getMax(parse.dongjak)%>,<%=cal.getMin(parse.dongjak)%>],
				['마포구', <%=cal.getAvg(parse.mapo)%>,<%=cal.getMedian(parse.mapo)%>,<%=cal.getMax(parse.mapo)%>,<%=cal.getMin(parse.mapo)%>],
				['서대문구', <%=cal.getAvg(parse.seodaemun)%>,<%=cal.getMedian(parse.seodaemun)%>,<%=cal.getMax(parse.seodaemun)%>,<%=cal.getMin(parse.seodaemun)%>],
				['서초구', <%=cal.getAvg(parse.seocho)%>,<%=cal.getMedian(parse.seocho)%>,<%=cal.getMax(parse.seocho)%>,<%=cal.getMin(parse.seocho)%>],
				['성동구', <%=cal.getAvg(parse.seongdong)%>,<%=cal.getMedian(parse.seongdong)%>,<%=cal.getMax(parse.seongdong)%>,<%=cal.getMin(parse.seongdong)%>],
				['성북구', <%=cal.getAvg(parse.seongbuk)%>,<%=cal.getMedian(parse.seongbuk)%>,<%=cal.getMax(parse.seongbuk)%>,<%=cal.getMin(parse.seongbuk)%>],
				['송파구', <%=cal.getAvg(parse.songpa)%>,<%=cal.getMedian(parse.songpa)%>,<%=cal.getMax(parse.songpa)%>,<%=cal.getMin(parse.songpa)%>],
				['양천구', <%=cal.getAvg(parse.yangcheon)%>,<%=cal.getMedian(parse.yangcheon)%>,<%=cal.getMax(parse.yangcheon)%>,<%=cal.getMin(parse.yangcheon)%>],
				['영등포구', <%=cal.getAvg(parse.yeongdeungpo)%>,<%=cal.getMedian(parse.yeongdeungpo)%>,<%=cal.getMax(parse.yeongdeungpo)%>,<%=cal.getMin(parse.yeongdeungpo)%>],
				['용산구', <%=cal.getAvg(parse.yongsan)%>,<%=cal.getMedian(parse.yongsan)%>,<%=cal.getMax(parse.yongsan)%>,<%=cal.getMin(parse.yongsan)%>],
				['은평구', <%=cal.getAvg(parse.eunpyeong)%>,<%=cal.getMedian(parse.eunpyeong)%>,<%=cal.getMax(parse.eunpyeong)%>,<%=cal.getMin(parse.eunpyeong)%>],
				['종로구', <%=cal.getAvg(parse.jongro)%>,<%=cal.getMedian(parse.jongro)%>,<%=cal.getMax(parse.jongro)%>,<%=cal.getMin(parse.jongro)%>],
				['중구', <%=cal.getAvg(parse.junggu)%>,<%=cal.getMedian(parse.junggu)%>,<%=cal.getMax(parse.junggu)%>,<%=cal.getMin(parse.junggu)%>],
				['중랑구', <%=cal.getAvg(parse.jungrang)%>,<%=cal.getMedian(parse.jungrang)%>,<%=cal.getMax(parse.jungrang)%>,<%=cal.getMin(parse.jungrang)%>]								
			]);
			
			var options = {
				title : "자치구별 아파트 매매 실거래가 거래금액의 기술통계 그래프",
				vAxis : {title : '아파트 매매 실거래가 거래금액(만원)'},
				hAxis : {title : '서울 자치구'},
				seriesType : 'bars',
				series : {5: {type: 'line'}}
			};
			
			var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}

  </script>
  </head>
  <body>
  	<div id="chart_div" style="width:900px; height:500px;"></div>
  </body>
</html>

<% 
	}catch (IOException ioe) {
		System.out.println(ioe);
	} catch (Exception ex) {
		System.out.println(ex);
	}	
%>	
	
	
