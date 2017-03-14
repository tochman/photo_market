Feature: Add images to the index page
  As a visitor
  In order to chose from a variety of images
  I would like to see a selection of images on index page


  Scenario: Shows images if there are images in the system



  Scenario: Shows message if there are no images in the system
    When I am on the index page
    Then I should see "No images yet!"