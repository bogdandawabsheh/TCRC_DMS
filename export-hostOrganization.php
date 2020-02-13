<?php

if (isset($_POST["export-hostOrganization"]))
{
    $connect = mysqli_connect("loki.trentu.ca", "apollosoftware", "yon9Knyk", "apollosoftware");
    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename=hostOrganization.csv');
    $output = fopen("php://output", "w");
    fputcsv($output, array('ID', 'Organization Name', 'Organization Type', 'Host Class', 'Contact Name', 'Notes', 'NLA', 'Department ID', 'WSIB'));
    $query = "SELECT * FROM hostOrganization";
    $result = mysqli_query($connect, $query);
    while($row = mysqli_fetch_assoc($result))
    {
        fputcsv($output, $row);
    }
    fclose($output);
}
?>
