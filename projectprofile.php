<?php
// Initialize the session
session_start();
$id = $office = $research = $projectTitle = $projectNumber = $projectDescription = $DepartmentalCode = $deptID = $dateProposed = $dateReceived = $approved = $signedRPA = $WEPA = $dateWithdrawn = $dateCompleted = $HostOrganizationName = $hostOrganizationID = $courseReq = $notes = $BFUser = $BFActivity = $facultySupervisorID = $BFDateOfNote = $dateProjectMatched = $callNumber = $staffID = $staffCode = $PClink = $deparmentCode = $institutionID = $status_percentage = "";
$office_err = $research_err = $projectTitle_err = $projectNumber_err = $projectDescription_err = $DepartmentalCode_err = $deptID_err = $dateProposed_err = $dateReceived_err = $approved_err = $signedRPA_err = $WEPA_err = $dateWithdrawn_err = $dateCompleted_err = $HostOrganizationName_err = $hostOrganizationID_err = $courseReq_err = $notes_err = $BFUser_err = $BFActivity_err = $facultySupervisorID_err = $BFDateOfNote_err = $dateProjectMatched_err = $callNumber_err = $staffID_err = $staffCode_err = $PClink_err = $deparmentCode_err = $institutionID_err = $status_percentage_err = "";
$projectArray = array();
$counter = 0;

require_once "config.php";
//Retrieve the list of currently approved but not yet begun projects

//CHECK GET
if(isset($_GET["id"])){
  $requestedID = filter_var($_GET["id"],FILTER_SANITIZE_STRING);
  $_SESSION["id"] = $requestedID;
}
elseif (isset($_SESSION["id"])){
  $requestedID = $_SESSION["id"];
} else {
  $message = "No GET/POST found. Ensure you are accessing correctly.";
  echo "<script type='text/javascript'>alert('$message');</script>";
  header("location: index1.php");
}

if($_SERVER['REQUEST_METHOD'] == "POST"){
  if(empty(trim($_POST['office']))){
    $office_err = "office";
  } else {
    $office_err = trim($_POST["office"]);
  }

  if(empty(trim($_POST['research']))){
    $research_err = "research";
  } else {
    $research_err = trim($_POST["research"]);
  }

  if(empty(trim($_POST['projectTitle']))){
    $projectTitle_err = "ProjectTitle";
  } else {
    $projectTitle_err = trim($_POST["projectTitle"]);
  }

  if(empty(trim($_POST['projectNumber']))){
    $projectNumber_err = "ProjectNumber";
  } else {
    $projectNumber_err = trim($_POST["projectNumber"]);
  }

  if(empty(trim($_POST['projectDescription']))){
    $projectDescription_err = "ProjectDescription";
  } else {
    $projectDescription_err = trim($_POST["projectDescription"]);
  }

  if(empty(trim($_POST['DepartmentCode']))){
    $DepartmentalCode_err = "DepartmentCode";
  } else {
    $DepartmentalCode_err = trim($_POST["DepartmentCode"]);
  }

  if(empty(trim($_POST['deptId']))){
    $deptID_err = "deptID";
  } else {
    $deptID_err = trim($_POST["deptId"]);
  }

  if(empty(trim($_POST['dateProposed']))){
    $dateProposed_err = "dateProposed";
  } else {
    $dateProposed_err = trim($_POST["dateProposed"]);
  }

  if(empty(trim($_POST['dateRecieved']))){
    $dateReceived_err = "dateReceived";
  } else {
    $dateReceived_err = trim($_POST["dateRecieved"]);
  }

  if(empty(trim($_POST['approved']))){
    $approved_err = "approved";
  } else {
    $approved_err = trim($_POST["approved"]);
  }

  if(empty(trim($_POST['signedRPA']))){
    $signedRPA_err = "signedRPA";
  } else {
    $signedRPA_err = trim($_POST["signedRPA"]);
  }

  if(empty(trim($_POST['WEPA']))){
    $WEPA_err = "WEPA";
  } else {
    $WEPA_err = trim($_POST["WEPA"]);
  }
  if(empty(trim($_POST['dateWithdrawn']))){
    $dateWithdrawn_err = "dateWithdrawn";
  } else {
    $dateWithdrawn_err = trim($_POST["dateWithdrawn"]);

  }if(empty(trim($_POST['dateCompleted']))){
    $dateCompleted_err = "dateCompleted";
  } else {
    $dateCompleted_err = trim($_POST["dateCompleted"]);

  }if(empty(trim($_POST['HostOrganizationName']))){
    $HostOrganizationName_err = "HostOrganizationName";
  } else {
    $HostOrganizationName_err = trim($_POST["HostOrganizationName"]);

  }if(empty(trim($_POST['hostOrganizationID']))){
    $hostOrganizationID_err = "hostOrganizationID";
  } else {
    $hostOrganizationID_err = trim($_POST["hostOrganizationID"]);

  }if(empty(trim($_POST['courseReq']))){
    $courseReq_err = "courseReq";
  } else {
    $courseReq_err = trim($_POST["courseReq"]);

  }if(empty(trim($_POST['notes']))){
    $notes_err = "notes";
  } else {
    $notes_err = trim($_POST["notes"]);

  }if(empty(trim($_POST['BFUser']))){
    $BFUser_err = "BFUser";
  } else {
    $BFUser_err = trim($_POST["BFUser"]);

  }if(empty(trim($_POST['BFActivity']))){
    $BFActivity_err = "BFActivity";
  } else {
    $BFActivity_err = trim($_POST["BFActivity"]);

  }if(empty(trim($_POST['facultySupervisorID']))){
    $facultySupervisorID_err = "facultySupervisorID";
  } else {
    $facultySupervisorID_err = trim($_POST["facultySupervisorID"]);

  }if(empty(trim($_POST['BFDateOfNote']))){
    $BFDateOfNote_err = "BFDateOfNote";
  } else {
    $BFDateOfNote_err = trim($_POST["BFDateOfNote"]);

  }if(empty(trim($_POST['dateProjectMatched']))){
    $dateProjectMatched_err = "dateProjectMatched";
  } else {
    $dateProjectMatched_err = trim($_POST["dateProjectMatched"]);

  }if(empty(trim($_POST['callNumber']))){
    $callNumber_err = "callNumber";
  } else {
    $callNumber_err = trim($_POST["callNumber"]);

  }if(empty(trim($_POST['status_percentage']))){
    $status_percentage_err = "status_percentage";
  } else {
    $status_percentage_err = trim($_POST["status_percentage"]);
  }

  if(empty($office_err)
   && empty ($research_err)
   && empty ($projectTitle_err)
   && empty ($projectNumber_err)
   && empty ($projectDescription_err)
   && empty ($DepartmentalCode_err)
   && empty ($deptID_err)
   && empty ($dateProposed_err)
   && empty ($dateReceived_err))
   {
     $sql = "UPDATE project SET office = ?, research = ?, projectTitle = ?, projectNumber = ?, projectDescription = ?, DepartmentalCode = ?, deptID = ?, dateProposed = ?, dateReceived = ? WHERE id = ?";

     if($stmt = mysqli_prepare($link,$sql)){
       mysqli_stmt_bind_param($stmt,"sssi",$office,$research,$projectTitle,$projectNumber,$projectDescription,$DepartmentalCode,$deptID,$dateProposed,$dateReceived,$requestedID);

       if(mysqli_stmt_execute($stmt)){
         header("location: projectprofile.php?id=".$requestedID);
       } else {
         //if there are problems, display error
         echo "ERROR at execution. Check database connection";
       }
     }
   }
   mysqli_close($link);
}

if(isset($requestedID)){
  $query = "SELECT * FROM project WHERE id = ?";
  if($stmt = mysqli_prepare($link,$query)){
    mysqli_stmt_bind_param($stmt, "s", $requestedID);
    $stmt -> execute();

    $result = $stmt -> get_result();
    while($row = $result -> fetch_assoc()){
        $id = $row['id'];
        $office = $row['office'];
        $research = $row['research'];
        $projectTitle = $row['projectTitle'];
        $projectNumber = $row['projectNumber'];
        $projectDescription = $row['projectDescription'];
        $DepartmentalCode = $row['DepartmentalCode'];
        $deptID = $row['deptID'];
        $dateProposed = $row['dateProposed'];
        $dateReceived = $row['dateReceived'];
      }
    }
}

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Projects </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Nav bar import -->
  <?php include 'includes/nav.php'; ?>
  <!-- Test -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Project Profiles</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index1.php">Home</a></li>
              <li class="breadcrumb-item active"><a href="project-main.php">DataTables</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="form group <?php echo (!empty($office_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group office">
            <p>Office:</p>
            <input type="text" name="office" class="form-control" value="<?php echo $office; ?>">
          </div>
          <span class="help-block"><?php echo $office; ?></span>
        </div>
          <br>
        <div class="form group <?php echo (!empty($research_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group research">
            <p>Research:</p>
            <input type="text" name="research" class="form-control" value="<?php echo $research; ?>">
          </div>
          <span class="help-block"><?php echo $research_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($projectTitle_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group projectTitle">
            <p>Project Title:</p>
            <input type="text" name="projectTitle" class="form-control" value="<?php echo $projectTitle; ?>">
          </div>
          <span class="help-block"><?php echo $projectTitle_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($projectNumber_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group projectNumber">
            <p>Project ID:</p>
            <input type="text" name="projectNumber" class="form-control" value="<?php echo $projectNumber; ?>">
          </div>
          <span class="help-block"><?php echo $projectNumber_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($projectDescription_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group projectDescription">
            <p>Project Description:</p>
            <input type="text" name="projectDescription" class="form-control" value="<?php echo $projectDescription; ?>">
          </div>
          <span class="help-block"><?php echo $projectDescription_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($DepartmentalCode_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group DepartmentalCode">
            <p>Departmental Code:</p>
            <input type="text" name="DepartmentCode" class="form-control" value="<?php echo $DepartmentalCode; ?>">
          </div>
          <span class="help-block"><?php echo $DepartmentalCode_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($deptID_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group deptID">
            <p>Department ID:</p>
            <input type="text" name="deptId" class="form-control" value="<?php echo $deptID; ?>">
          </div>
          <span class="help-block"><?php echo $deptID_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($dateProposed_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group dateProposed">
            <p>Date Proposed:</p>
            <input type="text" name="dateProposed" class="form-control" value="<?php echo $dateProposed; ?>">
          </div>
          <span class="help-block"><?php echo $dateProposed_err; ?></span>
        </div>
        <br>
        <div class="form group <?php echo (!empty($dateReceived_err)) ? 'has-error' : ''; ?>">
          <span class "label inbox-info"></span>
          <div class = "group dateRecieved">
            <p>Date Recieved:</p>
            <input type="text" name="dateRecieved" class="form-control" value="<?php echo $dateReceived; ?>">
          </div>
          <span class="help-block"><?php echo $dateReceived_err; ?></span>
        </div>

        <div class="form-group">
          <input type="submit" class="btn btn-primary" value="Submit">
          <input type="reset" class="btn btn-default" value="Reset">
        </div>
      </form>
    </section>
    <!-- /.content -->
  </div>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

</body>
</html>
