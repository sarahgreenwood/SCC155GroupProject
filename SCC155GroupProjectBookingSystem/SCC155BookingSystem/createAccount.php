<?php require_once('header.php'); ?>

<div class="row justify-content-md-center">
    <div class="col-lg-6 text-center">
        <a href="welcome.php">    
            <img class="mb-4" src="img/bridgwater-and-taunton-college-logo.png" alt="Bridgwater and Taunton college" width="200" height="200">
        </a>
    <form>
        <div class="form-group row">
            <label for="inputFirstName" class="col-sm-2 col-form-label">First Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputFirstName" value="John">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputLastName" class="col-sm-2 col-form-label">Last Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputLastName" value="Dunn">
            </div>
        </div>
        <br>
        <div class="form-group row">
            <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
                <input type="name" class="form-control" id="inputUsername" placeholder="Username">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Student/Staff</label>
            <div class="col-sm-10">
                <select class="form-control" id="Status">
                    <option>Student</option>
                    <option>Staff</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail" value="email@example.com">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
            </div>
        </div>
        <div class="form-group row">
            <label for="inputConfirmPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputConfirmPassword" placeholder="Confirm Password">
            </div>
        </div>
    <br>
    <button type="button" class="btn btn-success btn-lg">Submit</button>
</form>
</div>



<?php require_once('footer.php'); ?>