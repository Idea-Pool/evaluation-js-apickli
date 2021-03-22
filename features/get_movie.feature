Feature: Getting movie data
  As a movie fanatic
  I want to retrieve a movie data
  So that I can learn everything about it

  Background: Setting API key
    Given I set query parameters to
      | parameter | value |
      | api_key | `api_key` |

  @id(TC-1)
  Scenario: A movie can be retrieved by ID
    When I GET /movie/550
    Then response code should be 200

  @id(TC-2)
  Scenario: The retrieved movie has proper schema
    When I GET /movie/550
    Then response body path $.title should be Fight Club
    And response body should be valid according to schema file schema/movie.json

  @id(TC-8)
  Scenario: Missing ID should be handled properly
    When I GET /movie
    Then response code should be 404

