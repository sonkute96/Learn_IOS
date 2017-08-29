<?php

require_once "connection.php";
header('Content-Type: application/json');
$data = mysql_query("SELECT * FROM data");
$arr = array();

while($row = mysql_fetch_array($data)){

	$id = $row["id"];
	$nameVideo = $row["NameVideo"];
	$singer = $row["Singer"];
	$linkVideo = $row["Link"];
	array_push($arr, new playlist($id,$nameVideo,$singer,$linkVideo));
}
$json = json_encode($arr,JSON_PRETTY_PRINT);

$format_json  = "{\n \"Result\": \n".$json."\n}";

echo $format_json;


class playlist {

	var $id;
	var $nameVideo;
	var $singer;
	var $linkVideo;
	function playlist ($id, $nameVideo,$singer,$linkVideo) {
		$this->id = $id;
		$this->nameVideo = $nameVideo;
		$this->singer = $singer;
		$this->linkVideo = $linkVideo;
	}
}

?>
