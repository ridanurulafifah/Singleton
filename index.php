<?php
include_once "Database.php";


$db1 = Database::getInstance();
$db2 = Database::getInstance();


$db1->addMusic("Bohemian Rhapsody", "Rock", "Queen", 1975);
$db1->readMusic(1);
$db1->updateMusic(1, "Stairway to Heaven", "Rock", "Led Zeppelin", 1971);
$db1->deleteMusic(1);

$db2->addMusic("Rumpang", "Pop", "Nadin Amizah", 2018);
$db2->readMusic(2);
?>
