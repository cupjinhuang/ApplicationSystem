Feature: Manage leave_applications
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Register new leave_application
    Given I am on the new leave_application page
    When I fill in "Name" with "name 1"
    And I fill in "Staff" with "staff_id 1"
    And I fill in "Position title" with "position_title 1"
    And I fill in "Phone num" with "phone_num 1"
    And I fill in "Contact and addr" with "contact_and_addr 1"
    #And I fill in "Prev start date" with "prev_start_date 1"
    #And I fill in "Prev end date" with "prev_end_date 1"
    And I fill in "Leave type" with "leave_type 1"
    #And I fill in "Start date" with "start_date 1"
    #And I fill in "End date" with "end_date 1"
    And I fill in "Working day num" with "1"
    And I fill in "Obligation" with "obligation 1"
    And I fill in "Status" with "1"
    And I fill in "User" with "1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "staff_id 1"
    And I should see "position_title 1"
    And I should see "phone_num 1"
    And I should see "contact_and_addr 1"
    #And I should see "prev_start_date 1"
    #And I should see "prev_end_date 1"
    And I should see "leave_type 1"
    #And I should see "start_date 1"
    #And I should see "end_date 1"
    And I should see "1"
    And I should see "obligation 1"
    And I should see "1"
    And I should see "1"

  Scenario: Update new leave_application
    Given the following leave_applications:
      |name|staff_id|position_title|phone_num|contact_and_addr|prev_start_date|prev_end_date|leave_type|start_date|end_date|working_day_num|obligation|status|user_id|
      |name 1|staff_id 1|position_title 1|phone_num 1|contact_and_addr 1|prev_start_date 1|prev_end_date 1|leave_type 1|start_#date 1|end_date 1|1|obligation 1|1|1|
      |name 2|staff_id 2|position_title 2|phone_num 2|contact_and_addr 2|prev_start_date 2|prev_end_date 2|leave_type 2|start_#date 2|end_date 2|2|obligation 2|2|2|
      |name 3|staff_id 3|position_title 3|phone_num 3|contact_and_addr 3|prev_start_date 3|prev_end_date 3|leave_type 3|start_#date 3|end_date 3|3|obligation 3|3|3|
      |name 4|staff_id 4|position_title 4|phone_num 4|contact_and_addr 4|prev_start_date 4|prev_end_date 4|leave_type 4|start_#date 4|end_date 4|4|obligation 4|4|4|
    And I am on the edit leave_application 1 page
    When I fill in "Name" with "name 1"
    And I fill in "Staff" with "staff_id 1"
    And I fill in "Position title" with "position_title 1"
    And I fill in "Phone num" with "phone_num 1"
    And I fill in "Contact and addr" with "contact_and_addr 1"
    #And I fill in "Prev start date" with "prev_start_date 1"
    #And I fill in "Prev end date" with "prev_end_date 1"
    And I fill in "Leave type" with "leave_type 1"
    #And I fill in "Start date" with "start_date 1"
    #And I fill in "End date" with "end_date 1"
    And I fill in "Working day num" with "1"
    And I fill in "Obligation" with "obligation 1"
    And I fill in "Status" with "1"
    And I fill in "User" with "1"
    And I press "Update"
    Then I should see "name 1"
    And I should see "staff_id 1"
    And I should see "position_title 1"
    And I should see "phone_num 1"
    And I should see "contact_and_addr 1"
    #And I should see "prev_start_date 1"
    #And I should see "prev_end_date 1"
    And I should see "leave_type 1"
    #And I should see "start_date 1"
    #And I should see "end_date 1"
    And I should see "1"
    And I should see "obligation 1"
    And I should see "1"
    And I should see "1"

  Scenario: Delete leave_application
    Given the following leave_applications:
      |name|staff_id|position_title|phone_num|contact_and_addr|prev_start_date|prev_end_date|leave_type|start_date|end_date|working_day_num|obligation|status|user_id|
      |name 1|staff_id 1|position_title 1|phone_num 1|contact_and_addr 1|prev_start_date 1|prev_end_date 1|leave_type 1|start_#date 1|end_date 1|1|obligation 1|1|1|
      |name 2|staff_id 2|position_title 2|phone_num 2|contact_and_addr 2|prev_start_date 2|prev_end_date 2|leave_type 2|start_#date 2|end_date 2|2|obligation 2|2|2|
      |name 3|staff_id 3|position_title 3|phone_num 3|contact_and_addr 3|prev_start_date 3|prev_end_date 3|leave_type 3|start_#date 3|end_date 3|3|obligation 3|3|3|
      |name 4|staff_id 4|position_title 4|phone_num 4|contact_and_addr 4|prev_start_date 4|prev_end_date 4|leave_type 4|start_#date 4|end_date 4|4|obligation 4|4|4|
    When I delete the 3rd leave_application
    Then I should see the following leave_applications:
      |Name|Staff|Position title|Phone num|Contact and addr|Prev start date|Prev end date|Leave type|Start date|End date|Working day num|Obligation|Status|User|
      |name 1|staff_id 1|position_title 1|phone_num 1|contact_and_addr 1|prev_start_date 1|prev_end_date 1|leave_type 1|start_#date 1|end_date 1|1|obligation 1|1|1|
      |name 2|staff_id 2|position_title 2|phone_num 2|contact_and_addr 2|prev_start_date 2|prev_end_date 2|leave_type 2|start_#date 2|end_date 2|2|obligation 2|2|2|
      |name 4|staff_id 4|position_title 4|phone_num 4|contact_and_addr 4|prev_start_date 4|prev_end_date 4|leave_type 4|start_#date 4|end_date 4|4|obligation 4|4|4|
