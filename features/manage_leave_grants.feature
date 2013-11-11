Feature: Manage leave_grants
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Register new leave_grant
    Given I am on the new leave_grant page
    When I fill in "Name" with "name 1"
    And I fill in "Staff" with "staff_id 1"
    And I fill in "Passport" with "passport_id 1"
    And I fill in "Post" with "post 1"
    And I fill in "Years at iiis" with "1"
    And I fill in "Phone num" with "phone_num 1"
    And I fill in "Visit univerisity name" with "visit_univerisity_name 1"
    And I fill in "Inviter name" with "inviter_name 1"
    And I fill in "Inviter contact" with "inviter_contact 1"
    #And I fill in "Visit date" with "visit_date 1"
    And I uncheck "Give talk"
    And I fill in "Title1" with "title1 1"
    And I fill in "Title2" with "title2 1"
    And I fill in "Title3" with "title3 1"
    And I fill in "Title4" with "title4 1"
    And I fill in "Airfare" with "1.5"
    And I fill in "Hotel fare" with "1.5"
    And I fill in "Hotel days" with "1"
    And I fill in "Other fare" with "1.5"
    #And I fill in "Last approval date" with "last_approval_date 1"
    And I fill in "Leave application" with "1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "staff_id 1"
    And I should see "passport_id 1"
    And I should see "post 1"
    And I should see "1"
    And I should see "phone_num 1"
    And I should see "visit_univerisity_name 1"
    And I should see "inviter_name 1"
    And I should see "inviter_contact 1"
    #And I should see "visit_date 1"
    And I should see "false"
    And I should see "title1 1"
    And I should see "title2 1"
    And I should see "title3 1"
    And I should see "title4 1"
    And I should see "1.5"
    And I should see "1.5"
    And I should see "1"
    And I should see "1.5"
    #And I should see "last_approval_date 1"
    And I should see "1"

  Scenario: Update leave_grant
    Given the following leave_grants:
      |name|staff_id|passport_id|post|years_at_iiis|phone_num|visit_univerisity_name|inviter_name|inviter_contact|visit_date|give_talk|title1|title2|title3|title4|airfare|hotel_fare|hotel_days|other_fare|last_approval_date|leave_application_id|
      |name 1|staff_id 1|passport_id 1|post 1|1|phone_num 1|visit_univerisity_name 1|inviter_name 1|inviter_contact 1|visit_date 1|false|title1 1|title2 1|title3 1|title4 1|1.5|1.5|1|1.5|last_approval_date 1|1|
      |name 2|staff_id 2|passport_id 2|post 2|2|phone_num 2|visit_univerisity_name 2|inviter_name 2|inviter_contact 2|visit_date 2|true|title1 2|title2 2|title3 2|title4 2|airfare 2|hotel_fare 2|2|other_fare 2|last_approval_date 2|2|
      |name 3|staff_id 3|passport_id 3|post 3|3|phone_num 3|visit_univerisity_name 3|inviter_name 3|inviter_contact 3|visit_date 3|false|title1 3|title2 3|title3 3|title4 3|airfare 3|hotel_fare 3|3|other_fare 3|last_approval_date 3|3|
      |name 4|staff_id 4|passport_id 4|post 4|4|phone_num 4|visit_univerisity_name 4|inviter_name 4|inviter_contact 4|visit_date 4|true|title1 4|title2 4|title3 4|title4 4|airfare 4|hotel_fare 4|4|other_fare 4|last_approval_date 4|4|
    And I am on the edit leave_grant 1 page
    When I fill in "Name" with "name 1"
    And I fill in "Staff" with "staff_id 1"
    And I fill in "Passport" with "passport_id 1"
    And I fill in "Post" with "post 1"
    And I fill in "Years at iiis" with "1"
    And I fill in "Phone num" with "phone_num 1"
    And I fill in "Visit univerisity name" with "visit_univerisity_name 1"
    And I fill in "Inviter name" with "inviter_name 1"
    And I fill in "Inviter contact" with "inviter_contact 1"
    #And I fill in "Visit date" with "visit_date 1"
    And I uncheck "Give talk"
    And I fill in "Title1" with "title1 1"
    And I fill in "Title2" with "title2 1"
    And I fill in "Title3" with "title3 1"
    And I fill in "Title4" with "title4 1"
    And I fill in "Airfare" with "1.5"
    And I fill in "Hotel fare" with "1.5"
    And I fill in "Hotel days" with "1"
    And I fill in "Other fare" with "1.5"
    #And I fill in "Last approval date" with "last_approval_date 1"
    And I fill in "Leave application" with "1"
    And I press "Update"
    Then I should see "name 1"
    And I should see "staff_id 1"
    And I should see "passport_id 1"
    And I should see "post 1"
    And I should see "1"
    And I should see "phone_num 1"
    And I should see "visit_univerisity_name 1"
    And I should see "inviter_name 1"
    And I should see "inviter_contact 1"
    #And I should see "visit_date 1"
    And I should see "false"
    And I should see "title1 1"
    And I should see "title2 1"
    And I should see "title3 1"
    And I should see "title4 1"
    And I should see "1.5"
    And I should see "1.5"
    And I should see "1"
    And I should see "1.5"
    #And I should see "last_approval_date 1"
    And I should see "1"

  Scenario: Delete leave_grant
    Given the following leave_grants:
      |name|staff_id|passport_id|post|years_at_iiis|phone_num|visit_univerisity_name|inviter_name|inviter_contact|visit_date|give_talk|title1|title2|title3|title4|airfare|hotel_fare|hotel_days|other_fare|last_approval_date|leave_application_id|
      |name 1|staff_id 1|passport_id 1|post 1|1|phone_num 1|visit_univerisity_name 1|inviter_name 1|inviter_contact 1|visit_date 1|false|title1 1|title2 1|title3 1|title4 1|1.5|1.5|1|1.5|last_approval_date 1|1|
      |name 2|staff_id 2|passport_id 2|post 2|2|phone_num 2|visit_univerisity_name 2|inviter_name 2|inviter_contact 2|visit_date 2|true|title1 2|title2 2|title3 2|title4 2|airfare 2|hotel_fare 2|2|other_fare 2|last_approval_date 2|2|
      |name 3|staff_id 3|passport_id 3|post 3|3|phone_num 3|visit_univerisity_name 3|inviter_name 3|inviter_contact 3|visit_date 3|false|title1 3|title2 3|title3 3|title4 3|airfare 3|hotel_fare 3|3|other_fare 3|last_approval_date 3|3|
      |name 4|staff_id 4|passport_id 4|post 4|4|phone_num 4|visit_univerisity_name 4|inviter_name 4|inviter_contact 4|visit_date 4|true|title1 4|title2 4|title3 4|title4 4|airfare 4|hotel_fare 4|4|other_fare 4|last_approval_date 4|4|
    When I delete the 3rd leave_grant
    Then I should see the following leave_grants:
      |Name|Staff|Passport|Post|Years at iiis|Phone num|Visit univerisity name|Inviter name|Inviter contact|Visit date|Give talk|Title1|Title2|Title3|Title4|Airfare|Hotel fare|Hotel days|Other fare|Last approval date|Leave application|
      |name 1|staff_id 1|passport_id 1|post 1|1|phone_num 1|visit_univerisity_name 1|inviter_name 1|inviter_contact 1|visit_date 1|false|title1 1|title2 1|title3 1|title4 1|1.5|1.5|1|1.5|last_approval_date 1|1|
      |name 2|staff_id 2|passport_id 2|post 2|2|phone_num 2|visit_univerisity_name 2|inviter_name 2|inviter_contact 2|visit_date 2|true|title1 2|title2 2|title3 2|title4 2|airfare 2|hotel_fare 2|2|other_fare 2|last_approval_date 2|2|
      |name 4|staff_id 4|passport_id 4|post 4|4|phone_num 4|visit_univerisity_name 4|inviter_name 4|inviter_contact 4|visit_date 4|true|title1 4|title2 4|title3 4|title4 4|airfare 4|hotel_fare 4|4|other_fare 4|last_approval_date 4|4|
