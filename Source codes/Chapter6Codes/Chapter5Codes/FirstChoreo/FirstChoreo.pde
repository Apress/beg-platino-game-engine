import com.temboo.core.*;
import com.temboo.Library.EnviroFacts.Toxins.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("abhigeek81", "myFirstApp", "38cLfZFX8OjQ8qvMW1wiktIE6msnvQv2");

void setup() {
  // Run the FacilitiesSearchByZip Choreo function
  runFacilitiesSearchByZipChoreo();
}

void runFacilitiesSearchByZipChoreo() {
  // Create the Choreo object using your Temboo session
  FacilitiesSearchByZip facilitiesSearchByZipChoreo = new FacilitiesSearchByZip(session);

  // Set inputs
  facilitiesSearchByZipChoreo.setZip("90001");

  // Run the Choreo and store the results
  FacilitiesSearchByZipResultSet facilitiesSearchByZipResults = facilitiesSearchByZipChoreo.run();
  
  // Print results
  println(facilitiesSearchByZipResults.getResponse());

}