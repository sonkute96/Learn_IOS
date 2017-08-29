

<?php 

$hostName = "mysql.hostinger.vn";

$username = "u875295355_songs";

$password = "sonkute123";

$dbName = "u875295355_songs";

$conn = mysql_connect($hostName,$username,$password);

$sql = mysql_select_db($dbName,$conn);

mysql_query($sql);

?>