<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset="utf-8" />
</head>
<!-- 용록 google API 키 : AIzaSyDsbe2wAQzHeOramzOJo6M-Lhq6l0Wv0kc -->
<body>
	<div id="container">
		<div
			class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="title">
					<h2>
						<font color="333333">찾아오는길</font>
					</h2>
				</div>
			</div>
			<div style="text-align: center;">
				<h3 style="font-size:20;">서울특별시 강남구 역삼동 819-10 세경빌딩 3층</h3>
				<br>
				<br>
				<center>
				<div id="map" style="width: 40%; height: 60vh;"></div>
				</center>
			</div>
		</div>
	</div>


	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsbe2wAQzHeOramzOJo6M-Lhq6l0Wv0kc&callback=initMap&region=kr"></script>
	<script src="./script.js"></script>
</body>
<script>
	var map;
	var button = document.getElementById('button');
	button.addEventListener('click', changeCenter);

	function initMap() {
		var seoul = {
			lat : 37.49887,
			lng : 127.02819
		};
		map = new google.maps.Map(document.getElementById('map'), {
			zoom : 20,
			center : seoul
		});

		new google.maps.Marker({
			position : seoul,
			map : map,
			label : "예약의민족"
		});
	}
</script>
</html>