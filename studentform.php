<?php
// Initialize the session
session_start();
// Define variables and initialize with empty values
$name = $trent_email = $phone = $stud_num = $college = $major = $address = $stud_status = "";
$source = $mail_TCRC = $mail_ULink = $proj_num1 = $proj_num2 = $proj_num3 = $coursecode = "";
$supervisor = $credits = $cum_grade = $dept_req = "";
$name_err = $trent_email_err = $phone_err = $stud_num_err = $college_err = $major_err = $address_err = $stud_status_err = "";
$source_err = $mail_TCRC_err = $mail_ULink_err = $proj_num1_err = $proj_num2_err = $proj_num3_err = $coursecode_err = "";
$supervisor_err = $credits_err = $cum_grade_err = $dept_req_err = "";


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
</head>
<body>
  <h2>Student Project Form</h2>
  <p>Please fill this form to create an account.</p>
  <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
      <div class="form-group <?php echo (!empty($name_err)) ? 'has-error' : ''; ?>">
          <label>Name</label>
          <input type="text" name="name" class="form-control" value="<?php echo $name; ?>">
          <span class="help-block"><?php echo $name_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($trent_email_err)) ? 'has-error' : ''; ?>">
          <label>Email</label>
          <input type="text" name="email" class="form-control" value="<?php echo $trent_email; ?>">
          <span class="help-block"><?php echo $trent_email_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($phone_err)) ? 'has-error' : ''; ?>">
          <label>Phone</label>
          <input type="text" name="phone" class="form-control" value="<?php echo $phone; ?>">
          <span class="help-block"><?php echo $phone_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($stud_num_err)) ? 'has-error' : ''; ?>">
          <label>Student Number</label>
          <input type="text" name="stud_num" class="form-control" value="<?php echo $stud_num; ?>">
          <span class="help-block"><?php echo $stud_num_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($college_err)) ? 'has-error' : ''; ?>">
          <label>College</label>
          <input type="text" name="college" class="form-control" value="<?php echo $college; ?>">
          <span class="help-block"><?php echo $college_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($major_err)) ? 'has-error' : ''; ?>">
          <label>Major</label>
          <input type="text" name="major" class="form-control" value="<?php echo $major; ?>">
          <span class="help-block"><?php echo $major_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($major_err)) ? 'has-error' : ''; ?>">
          <label>Major</label>
          <input type="text" name="major" class="form-control" value="<?php echo $major; ?>">
          <span class="help-block"><?php echo $major_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($address_err)) ? 'has-error' : ''; ?>">
          <label>Address</label>
          <input type="text" name="address" class="form-control" value="<?php echo $address; ?>">
          <span class="help-block"><?php echo $address_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($stud_status_err)) ? 'has-error' : ''; ?>">
          <label>Student Status</label>
          <input type="radio" name="stud_status" value="international" class="form-control"> International<br>
          <input type="radio" name="stud_status" value="canadian" class="form-control"> Canadian<br>
          <span class="help-block"><?php echo $stud_status_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($mail_TCRC_err)) ? 'has-error' : ''; ?>">
          <label>Join TCRC Mailing list?</label>
          <input type="radio" name="mail_TCRC" value="yes" class="form-control"> Yes<br>
          <input type="radio" name="mail_TCRC" value="no" class="form-control"> No<br>
          <span class="help-block"><?php echo $mail_TCRC_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($mail_ULink_err)) ? 'has-error' : ''; ?>">
          <label>Join ULinks Mailing list?</label>
          <input type="radio" name="mail_ULink" value="yes" class="form-control"> Yes<br>
          <input type="radio" name="mail_ULink" value="no" class="form-control"> No<br>
          <span class="help-block"><?php echo $mail_ULink_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($proj_num1_err)) ? 'has-error' : ''; ?>">
          <label>Select Project #1</label>
          <input type="text" name="proj_num1" class="form-control" value="<?php echo $proj_num1; ?>">
          <span class="help-block"><?php echo $proj_num1_err; ?></span>
      </div>
      <div class="form-group <?php echo (!empty($proj_num2_err)) ? 'has-error' : ''; ?>">
          <label>Select Project #2</label>
          <input type="text" name="proj_num2" class="form-control" value="<?php echo $proj_num2; ?>">
          <span class="help-block"><?php echo $proj_num2_err; ?></span>
      </div>
      <div class="form-group <?php echo (!empty($proj_num3_err)) ? 'has-error' : ''; ?>">
          <label>Select Project #3</label>
          <input type="text" name="proj_num3" class="form-control" value="<?php echo $proj_num3; ?>">
          <span class="help-block"><?php echo $proj_num3_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($coursecode_err)) ? 'has-error' : ''; ?>">
          <label>Course Code</label>
          <input type="text" name="coursecode" class="form-control" value="<?php echo $coursecode; ?>">
          <span class="help-block"><?php echo $coursecode_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($supervisor_err)) ? 'has-error' : ''; ?>">
          <label>Supervisor Name</label>
          <input type="text" name="supervisor" class="form-control" value="<?php echo $supervisor; ?>">
          <span class="help-block"><?php echo $supervisor_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($credits_err)) ? 'has-error' : ''; ?>">
          <label>Do you meet credit requirements?</label>
          <input type="radio" name="credits" value="yes" class="form-control"> Yes<br>
          <input type="radio" name="credits" value="no" class="form-control"> No<br>
          <span class="help-block"><?php echo $credits_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($cum_grade_err)) ? 'has-error' : ''; ?>">
          <label>Do you meet average grade requirements?</label>
          <input type="radio" name="cum_grade" value="yes" class="form-control"> Yes<br>
          <input type="radio" name="cum_grade" value="no" class="form-control"> No<br>
          <span class="help-block"><?php echo $cum_grade_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($dept_req_err)) ? 'has-error' : ''; ?>">
          <label>Do you meet departamental requirements?</label>
          <input type="radio" name="dept_req" value="yes" class="form-control"> Yes<br>
          <input type="radio" name="dept_req" value="no" class="form-control"> No<br>
          <span class="help-block"><?php echo $dept_req_err; ?></span>
      </div>
      <div class="form-group">
          <input type="submit" class="btn btn-primary" value="Submit">
          <input type="reset" class="btn btn-default" value="Reset">
      </div>
      <p>Already have an account? <a href="login.php">Login here</a>.</p>
  </form>
  </body>
  </html>
