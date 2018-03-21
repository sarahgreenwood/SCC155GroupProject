<?php require_once('header.php'); ?>

<div class="row justify-content-md-center">
    <div class="col-lg-4">
        <div class="text-center">
            <form class="form-signin">
                <a href="welcome.php">
                    <img class="mb-4" src="img/bridgwater-and-taunton-college-logo.png" alt="Bridgwater and Taunton college" width="200" height="200">
                </a>
                <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                <label for="inputEmail" class="sr-only">Email address</label>
                <br>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <br>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <br>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
            </form>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
