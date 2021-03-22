Feature: Rating a movie
  As a movie fanatic
  I want to rate movies
  So that I can show my experise and tell what is good

  Background: Getting guest session
    Given I set query parameters to
      | parameter | value |
      | api_key | `api_key` | 
    And I GET /authentication/guest_session/new
    And I store the value of body path $.guest_session_id as guest_session_id in scenario scope
    And I set query parameters to
      | parameter | value |
      | guest_session_id | `guest_session_id` | 
      | api_key | `api_key` |

  @id(TC-3)
  Scenario: A rating can be added to a movie
    Given I set body to {"value": 8.0}
    When I POST to /movie/550/rating
    Then response code should be 201

  @id(TC-4)
  Scenario: The movie rating should return proper message
    Given I set body to {"value": 8.0}
    When I POST to /movie/550/rating
    Then response body path $.status_message should be Success.
    And response body path $.success should be true

  @id(TC-5)
  Scenario: Invalid rating cannot be added to a movie
    Given I set body to {"value": 10.5}
    When I POST to /movie/550/rating
    Then response code should be 400
    And response body path $.status_message should be Value too high: Value must be less than, or equal to 10.0.

  @id(TC-6)
  Scenario: Movie rating can be deleted
    Given I set body to {"value": 8.0}
    And I POST to /movie/550/rating
    When I DELETE /movie/550/rating
    Then response code should be 200

  @id(TC-7)
  Scenario: Proper status message should be returned when rating is deleted
    Given I set body to {"value": 8.5}
    And I POST to /movie/550/rating
    When I DELETE /movie/550/rating
    Then response body path $.status_message should be The item/record was deleted successfully.
