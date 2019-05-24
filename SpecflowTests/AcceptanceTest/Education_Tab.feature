Feature:  Education Tab feature
	In order to update my profile 
	As a skill trader
	I want perform the following opearation in Education tab

@mytag1
Scenario: check if the user is able to Add detais into education background.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and click on Add New
	And I enter all the required details 
	When I press Add
	Then all the Education data should be displayed.


	
@mytag2
Scenario Outline: check if the user is able to enter multiple education details within the Education tab.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and click on Add New
	And I enter all the required details '<College_name>' ,'<Degree>'
	When I click on Add
	Then all the Education data should be displayed.

	Examples: 
	    | College |  Degree   |
	    | SR      | Bachelors | 
	    | Jntu    | Masters   | 
	    | Deakin   | Bachelors| 
  
  @mytag3
Scenario: check if the user is able to update eduation details.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and select the education to update and click on edit
	And I update  the required fields with new values
	When I click on update
	Then all the Education details with updated data should be displayed.

	
  @mytag4
Scenario: check if the user is able to cancel update operation for eduation details.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and select the education to update
	And I click on update and
	When I click on cancel
	Then the update operation should be cancelled.

	
  @mytag5
Scenario: check if the user is able to delete eduation details.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and select the education to delete
	When I click on  delete
	Then the deleted education details should not be displayed and gives a message as "Education entry successfully removed".


  @mytag6
Scenario: check if the user is able to add the details with null values.
   Given I launch the browser and login to the portal
	And I click on Education  under profile tab and Click on Add New
	And I leave the fields empty  
	When I click on Add
	Then it shows an error message as "Please enter all fields" .

	
  @mytag7
Scenario: check if the user is able to add the education with existing details.
   Given I launch the browser and login to the portal
	And I click on Education  under profie tab and click on Add New
	And I give all the fields with existing data.
	When I click on Add
	Then it should dispaly an error message as "This information is already exist".

	
  @mytag8
Scenario: check if the user is able to add the education details with existing data with different year.
   Given I launch the browser and login to the portal
	And I click on Education  under profie tab and click on Add New
	And I give all the fields with existing data and give different value for year.
	When I click on Add
	Then it should dispaly an error message as "Duplicated data".






