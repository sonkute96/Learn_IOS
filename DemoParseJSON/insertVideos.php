<?php 

if (isset($_POST['chenvideo'])){

	$namevideo = $_POST['namevideo'];
	$linkvideo = $_POST['linkvideo']."?rel=0&autoplay=1";

	$singer = $_POST['singer'];

	require_once "connection.php";

	$sql = "INSERT INTO data(NameVideo,Singer,Link) VALUES('$namevideo','$singer','$linkvideo')";
	mysql_query($sql);
}


?>


<html>
<head>
	<title> Chen video </title>
</head>
<body>

	<form action = "insertVideos.php" method = "post">
		<input type = "text" name="namevideo" value = "namevideo">
		<input type = "text" name="linkvideo" value= "linkvideo">
		<input type = "text" name= "singer" value = "singer">
		<input type = "submit" name="chenvideo"value="chenvideo">
	</form>
	</body>
</html>