import com.temboo.core.*;
import com.temboo.Library.DailyMed.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("abhigeek81", "myFirstApp", "38cLfZFX8OjQ8qvMW1wiktIE6msnvQv2");

void setup() {
  // Run the SearchByName Choreo function
  runSearchByNameChoreo();
}

void runSearchByNameChoreo() {
  // Create the Choreo object using your Temboo session
  SearchByName searchByNameChoreo = new SearchByName(session);

  // Set inputs
  searchByNameChoreo.setDrugName("Biseptol");

  // Run the Choreo and store the results
  SearchByNameResultSet searchByNameResults = searchByNameChoreo.run();
  
  // Print results
  println(searchByNameResults.getResponse());

}