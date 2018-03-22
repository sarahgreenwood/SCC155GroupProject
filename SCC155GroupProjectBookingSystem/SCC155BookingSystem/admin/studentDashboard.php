<?php require_once('adminHeader.php'); ?>
    <div class="container">
        <h1 class="display-4 text-center">Welcome to your student dashboard</h1>
<br>
<!-- to be displayed when there are no bookings. -->
<div class="row">
    <div class="col-md-6">
        <p id="noBookings">You currently, don't have any booking.</p>
    </div>
    <div class="col-md-6 text-right">
        <a href="BookingForm" class="btn btn-lg btn-success">
            <span class="glyphicon glyphicon-plus btn-lg" id="createBooking" aria-hidden="true"></span> Create a Booking
        </a>
    </div>
</div>
<br>
    <div class="row">
    <h2 class="display-6">Bookings</h2>
    <table class="table table-striped">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col" id="bookingDate">Date of Booking</th>
        <th scope="col" id="bookingRoom">Room</th>
        <th scope="col" id="bookingDateOfArrival">Date of Arrival</th>
        <th scope="col" id="bookingDateOfArrival">Date of Departure</th>
        <th scope="col" ></th>        
    </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">1</th>
            <td>22/03/2018</td>
            <td>Double</td>
            <td>8/9/2919</td>
            <td>22/12/2919</td>
            <td>
                <button type="button" class="btn btn-default" aria-label="Edit booking">
                    <span class="glyphicon glyphicon-pencil" id="editBooking" aria-hidden="true"></span>
                </button>
                <button type="button" class="btn btn-default" aria-label="Delete booking">
                    <span class="glyphicon glyphicon-trash" id="deleteBooking" aria-hidden="true"></span>
                </button>
            </td>
        </tr>
    </tbody>
    </table>
    </div>
</div>
<?php require_once('../footer.php'); ?>
