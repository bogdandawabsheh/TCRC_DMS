<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light" >
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
    </li>
    <li class="nav-item d-none d-sm-inline-block">
      <a href="index1.php" class="nav-link">Home</a>
    </li>
    <li class="nav-item d-none d-sm-inline-block">
      <a href="#" class="nav-link">Contact</a>
    </li>
  </ul>
<center>
  <!-- SEARCH FORM -->
  <form class="form-inline ml-3">
    <div class="input-group input-group-sm">
      <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search" >
      <div class="input-group-append">
        <button class="btn btn-navbar" type="submit">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </div>
  </form>
  </center>

  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
  <!-- lockscreen  -->
  <li class="nav-item d-none d-sm-inline-block">
      <a href="logout.php" accesskey="l" class="nav-link">
      <i class="nav-icon fas fa-lock"></i>
      </a>
    </li>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="index1.php" class="brand-link">
   <center> <img src="images/TrentCommResCentre.jpg" alt="TCRC"
         style="opacity: .8" width = "90%" height = "70%"> </center>
    <!-- <span class="brand-text font-weight-light">TCRC</span> -->
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image"> -->
      </div>
      <div class="info">
        <a href="#" class="d-block"> Logged in as <?php echo htmlspecialchars($_SESSION["username"]); ?></a>
        <a href="logout.php" class="d-block" style= "color: red"> Log Out </a>

      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview menu-open">
          <a href="index1.php" class="nav-link">
            <i class="nav-icon fas fa-home"></i>
            <p>
              Home
              <!-- <i class="right fas fa-angle-left"></i> -->
            </p>
          </a>
      <li class="nav-item">
        <a href="project-main.php" class="nav-link">
          <i class="nav-icon fas fa-tachometer-alt"></i>
          <p>
            Projects
            <!-- <span class="right badge badge-danger">New</span> -->
          </p>
        </a>
      </li>
        <li class="nav-item">
          <a href="student-main.php" class="nav-link">
            <i class="nav-icon fas fa-users"></i>
            <p>
              Students
              <!-- <i class="right fas fa-angle-left"></i> -->
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="faculty-main.php" class="nav-link">
            <i class="nav-icon fas fa-user"></i>
            <p>
              Faculty
              <!-- <i class="fas fa-angle-left right"></i> -->
            </p>
          </a>

        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              Applications
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="studentformentries.php" class="nav-link">
                <i class="fas fa-pen nav-icon"></i>
                <p>Student Form</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="projectformentries.php" class="nav-link">
                <i class="fas fa-pen nav-icon"></i>
                <p>Project Form</p>
              </a>
            </li>
            <!-- <li class="nav-item">
              <a href="" class="nav-link">
                <i class="fas fa-pen nav-icon"></i>
                <p>Edit Project Form Entries</p>
              </a>
            </li> -->
          </ul>
        </li>
        <li class="nav-item">
          <a href="main.php" class="nav-link">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Tables
              <!-- <i class="fas fa-angle-left right"></i> -->
            </p>
          </a>
        </li>
      </li>
        <li class="nav-header">ADDITIONAL FEATURES </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon far fa-calendar-alt"></i>
            <p>
              Calendar
              <span class="badge badge-info right">2</span>
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon far fa-image"></i>
            <p>
              Gallery
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon far fa-envelope"></i>
            <p>
              Mailbox
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Inbox</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Compose</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Read</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon far fa-plus-square"></i>
            <p>
              User Operations
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Log Out</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Register</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Forgot Password</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Recover Password</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="logout.php" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Lockscreen</p>
              </a>
            </li>

          </ul>
        </li>
        <li class="nav-header">MISCELLANEOUS</li>
        <li class="nav-item">
          <a href="https://docs.google.com/document/d/1qh_c8LGp0_c3caKWR8ytAoitVXK7_XQUbmm1oNc94Gg/edit?usp=sharing" class="nav-link">
            <i class="nav-icon fas fa-file"></i>
            <p>Documentation</p>
          </a>
        </li>
      </ul>

      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
