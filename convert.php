<?php

$inputFolder = '/var/www/html/input';
$inputFile = $inputFolder . '/' . bin2hex(random_bytes(18)) . '.webm';
$outputFolder = '/var/www/html/output';
$outputFile = $outputFolder . '/' . bin2hex(random_bytes(18)) . '.mp4';

move_uploaded_file($_FILES['file']['tmp_name'], $inputFile);

exec("/usr/bin/ffmpeg -i $inputFile $outputFile 2>&1", $output);

echo '/output/' . basename($outputFile);
