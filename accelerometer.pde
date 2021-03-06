// Variables x, y, z are set in the web page via javascript and jquery.
// Every time the sensor updates, it updates the x, y, z positions.
// If there is no sensor, then x, y, z are null.

// Add a link to jQuery and this code to the html page:

/*
    <script type="text/javascript">
      var x; var y; var z;
      window.ondevicemotion = function(event) {
        x = event.accelerationIncludingGravity.x;  
        y = event.accelerationIncludingGravity.y;  
        z = event.accelerationIncludingGravity.z; 
      };
    </script>
*/


void setup()
{
  // set size of the processing window0
  size(400,300);
  
  // 
  stroke(0);
  fill(0);
}

void draw()
{
  background(#aaaaaa);
  
  // check if the window.ondevicemotion event has set x to a value
  if(x == null)
  {
    textSize(20);
    text("No accelerometer detected\nAre you on a mobile phone?", 20, 60);
  }
  else 
  {
    textSize(40);
    text("sensor detected", 20, 60);
  }

  // display x, y, z information on the screen
  textSize(40);
  text("x: " + x, 20, 120);
  text("y: " + y, 20, 180);
  text("z: " + z, 20, 240);
}
