<?php

if (isset($_POST["export-faculty"]))
{
    $connect = mysqli_connect("loki.trentu.ca", "apollosoftware", "yon9Knyk", "apollosoftware");
    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename=department.csv');
    $output = fopen("php://output", "w");
    fputcsv($output, array('id', 'firstName', 'LastName', 'email'));
    $query = "SELECT * FROM faculty";
    $result = mysqli_query($connect, $query);
    while($row = mysqli_fetch_assoc($result))
    {
        fputcsv($output, $row);
    }
    fclose($output);
}
?>