Feature: Dummy Restapi End Point

  As a user I would like to check CRUD operation of the application

  @smoke @regression
  Scenario: I want to create a new employee
    When I send POST request to the application using a valid payload
    Then I get status code 200

  @smoke @regression
  Scenario: I want to read a new employee
    When I send POST request to the application using a valid payload
    Then I get status code 200
    And  I verify if a new employee created

  @sanity @regression
  Scenario: I want to update a newly created employee
    When I send PUT request to the application using a valid payload
    Then I get status code 200
    And  I verify if a new employee updated

  @sanity @regression
  Scenario: I want to delete a newly created employee
    When I send DELETE request to the application
    Then I get status code 200
    And  I verify if a new employee deleted

 @regression
  Scenario: I want to fetch all employees and verify some from the response
    When I send GET request to the application to fetch all employees record
    Then I get status code 200
    And  I verify total records are 24
    And  I verify twenty-forth employee id is 24
    And  I verify twenty-forth employee name is "Doris Wilder"
    And  I verify message is "Successfully! All records has been fetched."
    And  I verify status is "success"
    And  I verify employee id 3 has employee salary is 86000
    And  I verify employee id 6 has employee age is 61
    And  I verify employee id 11 has employee salary is "Jena Gaines"