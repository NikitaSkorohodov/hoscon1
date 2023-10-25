<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "uaers";

$mysqli = new mysqli($host, $username, $password, $database);

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

class CModel {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function GetData() {
        $query = "SELECT TITLE, DATE, AUTHOR, IMAGE, TEXT FROM your_table_name";
        $result = $this->db->query($query);

        if (!$result) {
            throw new Exception("Ошибка при выполнении SQL-запроса: " . $this->db->error);
        }

        $arrayResult = array();
        while ($row = $result->fetch_assoc()) {
            $arrayResult[] = $row;
        }

        $result->close();

        return $arrayResult;
    }
}


$model = new CModel($mysqli);

$data = $model->GetData();

foreach ($data as $item) {
    echo "Title: " . $item['TITLE'] . "<br>";
    echo "Date: " . $item['DATE'] . "<br>";
    echo "Author: " . $item['AUTHOR'] . "<br>";
    echo "<img src='" . $item['IMAGE'] . "' alt='Image'><br>";
    echo "Text: " . $item['TEXT'] . "<br>";
    echo "<hr>";
}

$mysqli->close();
