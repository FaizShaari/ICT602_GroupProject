<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="style.css" />
    <title>CrisisMapper Server Side</title>

<style>
  .top-image {
  display: block;
  margin: auto;
}
  </style>

  </head>
  <body>

  <nav>
    <div class="navbar">
      <div class="logo"><a href="#">CrisisMapper Server Side</a></div>
    </div>
  </nav>


    <section class="container">

    <img src="logo.png" alt="Image Description" class="top-image" width="160px" height="130px"/>


      <header>Hazard Registration</header>
      <form action="submit-hazard.php" method="POST" class="form">

      <div class="select-box">
        <select id="typeHazard" name="type_hazard" required>
          <option value="" disabled selected hidden>Select Hazard Type</option>
          <option value="Floods">Floods</option>
          <option value="Landslides">Landslides</option>
        </select>
      </div>

            <div class="input-box">
            <label>Time & Date Reported</label>
            <input type="datetime-local" name="timeDate_reported" placeholder="Enter time & date reported" required />
          </div>

          <div class="input-box">
          <label>Reporter Name</label>
          <input type="text" name="reporter_name" placeholder="Enter reporter name" required />
        </div>

        <div class="input-box">
          <label>Hazard Location</label>
          <input type="text" name="hazard_location" placeholder="Enter hazard location" required />
        </div>

        <div class="input-box">
          <label for="hazardDescription">Hazard Description</label><br><br>
          <textarea id="hazardDescription" name="hazard_desc" placeholder="Enter hazard description" rows="4" cols="50" required></textarea>
        </div>

        <div class="input-box">
          <label for="latitude">Latitude of the Location</label>
          <input type="number" name="lat" id="latitude" placeholder="Enter latitude location" step="0.0001" required />
        </div>

        <div class="input-box">
          <label for="longitude">Longitude of the Location</label>
          <input type="number" name="lng" id="longitude" placeholder="Enter longitude location" step="0.0001" required />
        </div>

        <button>Submit</button>
      </form>
    </section>
  </body>
</html>