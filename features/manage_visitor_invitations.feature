Feature: Manage visitor_invitations
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Register new visitor_invitation
    Given I am on the new visitor_invitation page
    When I fill in "Name" with "Name 1"
    And I fill in "Staff id" with "1"
    And I fill in "Passport no" with "Passport_No 1"
    And I fill in "Post" with "Post 1"
    And I fill in "Years at iiis" with "1"
    And I fill in "Telephone no" with "Telephone_No 1"
    And I fill in "Invitee" with "Invitee 1"
    And I fill in "Invitee name" with "Invitee_Name 1"
    And I fill in "Invitee affiliation" with "Invitee_Affiliation 1"
    And I fill in "Invitee contact" with "Invitee_Contact 1"
    #And I fill in "Visit date start" with "Visit_Date_start 1"
    #And I fill in "Visit date end" with "Visit_Date_end 1"
    And I fill in "Give talk" with "Give_talk 1"
    And I fill in "Talk title" with "Talk_title 1"
    And I fill in "Airfare" with "Airfare 1"
    And I fill in "Hotel accommodation" with "Hotel_accommodation 1"
    And I fill in "Others" with "Others 1"
    And I fill in "Last approval" with "Last_approval 1"
    And I fill in "Other airfare" with "Other_airfare 1"
    And I fill in "Other hotel accommodation" with "Other_Hotel_accommodation 1"
    And I fill in "Other honorarium" with "Other_Honorarium 1"
    And I fill in "Other others" with "Other_others 1"
    #And I fill in "Date" with "Date 1"
    And I press "Create"
    Then I should see "Name 1"
    And I should see "1"
    And I should see "Passport_No 1"
    And I should see "Post 1"
    And I should see "1"
    And I should see "Telephone_No 1"
    And I should see "Invitee 1"
    And I should see "Invitee_Name 1"
    And I should see "Invitee_Affiliation 1"
    And I should see "Invitee_Contact 1"
    #And I should see "Visit_Date_start 1"
    #And I should see "Visit_Date_end 1"
    And I should see "Give_talk 1"
    And I should see "Talk_title 1"
    And I should see "Airfare 1"
    And I should see "Hotel_accommodation 1"
    And I should see "Others 1"
    And I should see "Last_approval 1"
    And I should see "Other_airfare 1"
    And I should see "Other_Hotel_accommodation 1"
    And I should see "Other_Honorarium 1"
    And I should see "Other_others 1"
    #And I should see "Date 1"

  Scenario: Update new visitor_invitation
    Given the following visitor_invitations:
      |Name|Staff_ID|Passport_No|Post|Years_at_IIIS|Telephone_No|Invitee|Invitee_Name|Invitee_Affiliation|Invitee_Contact|Visit_Date_start|Visit_Date_end|Give_talk|Talk_title|Airfare|Hotel_accommodation|Others|Last_approval|Other_airfare|Other_Hotel_accommodation|Other_Honorarium|Other_others|Date|
      |Name 1|1|Passport_No 1|Post 1|1|Telephone_No 1|Invitee 1|Invitee_Name 1|Invitee_Affiliation 1|Invitee_Contact 1|Visit_Date_start 1|Visit_Date_end 1|Give_talk 1|Talk_title 1|Airfare 1|Hotel_accommodation 1|Others 1|Last_approval 1|Other_airfare 1|Other_Hotel_accommodation 1|Other_Honorarium 1|Other_others 1|Date 1|
      |Name 2|2|Passport_No 2|Post 2|2|Telephone_No 2|Invitee 2|Invitee_Name 2|Invitee_Affiliation 2|Invitee_Contact 2|Visit_Date_start 2|Visit_Date_end 2|Give_talk 2|Talk_title 2|Airfare 2|Hotel_accommodation 2|Others 2|Last_approval 2|Other_airfare 2|Other_Hotel_accommodation 2|Other_Honorarium 2|Other_others 2|Date 2|
      |Name 3|3|Passport_No 3|Post 3|3|Telephone_No 3|Invitee 3|Invitee_Name 3|Invitee_Affiliation 3|Invitee_Contact 3|Visit_Date_start 3|Visit_Date_end 3|Give_talk 3|Talk_title 3|Airfare 3|Hotel_accommodation 3|Others 3|Last_approval 3|Other_airfare 3|Other_Hotel_accommodation 3|Other_Honorarium 3|Other_others 3|Date 3|
      |Name 4|4|Passport_No 4|Post 4|4|Telephone_No 4|Invitee 4|Invitee_Name 4|Invitee_Affiliation 4|Invitee_Contact 4|Visit_Date_start 4|Visit_Date_end 4|Give_talk 4|Talk_title 4|Airfare 4|Hotel_accommodation 4|Others 4|Last_approval 4|Other_airfare 4|Other_Hotel_accommodation 4|Other_Honorarium 4|Other_others 4|Date 4|
    And I am on the edit visitor_invitation 1 page
    When I fill in "Name" with "Name 1"
    And I fill in "Staff id" with "1"
    And I fill in "Passport no" with "Passport_No 1"
    And I fill in "Post" with "Post 1"
    And I fill in "Years at iiis" with "1"
    And I fill in "Telephone no" with "Telephone_No 1"
    And I fill in "Invitee" with "Invitee 1"
    And I fill in "Invitee name" with "Invitee_Name 1"
    And I fill in "Invitee affiliation" with "Invitee_Affiliation 1"
    And I fill in "Invitee contact" with "Invitee_Contact 1"
    #And I fill in "Visit date start" with "Visit_Date_start 1"
    #And I fill in "Visit date end" with "Visit_Date_end 1"
    And I fill in "Give talk" with "Give_talk 1"
    And I fill in "Talk title" with "Talk_title 1"
    And I fill in "Airfare" with "Airfare 1"
    And I fill in "Hotel accommodation" with "Hotel_accommodation 1"
    And I fill in "Others" with "Others 1"
    And I fill in "Last approval" with "Last_approval 1"
    And I fill in "Other airfare" with "Other_airfare 1"
    And I fill in "Other hotel accommodation" with "Other_Hotel_accommodation 1"
    And I fill in "Other honorarium" with "Other_Honorarium 1"
    And I fill in "Other others" with "Other_others 1"
    #And I fill in "Date" with "Date 1"
    And I press "Update"
    Then I should see "Name 1"
    And I should see "1"
    And I should see "Passport_No 1"
    And I should see "Post 1"
    And I should see "1"
    And I should see "Telephone_No 1"
    And I should see "Invitee 1"
    And I should see "Invitee_Name 1"
    And I should see "Invitee_Affiliation 1"
    And I should see "Invitee_Contact 1"
    #And I should see "Visit_Date_start 1"
    #And I should see "Visit_Date_end 1"
    And I should see "Give_talk 1"
    And I should see "Talk_title 1"
    And I should see "Airfare 1"
    And I should see "Hotel_accommodation 1"
    And I should see "Others 1"
    And I should see "Last_approval 1"
    And I should see "Other_airfare 1"
    And I should see "Other_Hotel_accommodation 1"
    And I should see "Other_Honorarium 1"
    And I should see "Other_others 1"
    #And I should see "Date 1"

  Scenario: Delete visitor_invitation
    Given the following visitor_invitations:
      |Name|Staff_ID|Passport_No|Post|Years_at_IIIS|Telephone_No|Invitee|Invitee_Name|Invitee_Affiliation|Invitee_Contact|Visit_Date_start|Visit_Date_end|Give_talk|Talk_title|Airfare|Hotel_accommodation|Others|Last_approval|Other_airfare|Other_Hotel_accommodation|Other_Honorarium|Other_others|Date|
      |Name 1|1|Passport_No 1|Post 1|1|Telephone_No 1|Invitee 1|Invitee_Name 1|Invitee_Affiliation 1|Invitee_Contact 1|Visit_Date_start 1|Visit_Date_end 1|Give_talk 1|Talk_title 1|Airfare 1|Hotel_accommodation 1|Others 1|Last_approval 1|Other_airfare 1|Other_Hotel_accommodation 1|Other_Honorarium 1|Other_others 1|Date 1|
      |Name 2|2|Passport_No 2|Post 2|2|Telephone_No 2|Invitee 2|Invitee_Name 2|Invitee_Affiliation 2|Invitee_Contact 2|Visit_Date_start 2|Visit_Date_end 2|Give_talk 2|Talk_title 2|Airfare 2|Hotel_accommodation 2|Others 2|Last_approval 2|Other_airfare 2|Other_Hotel_accommodation 2|Other_Honorarium 2|Other_others 2|Date 2|
      |Name 3|3|Passport_No 3|Post 3|3|Telephone_No 3|Invitee 3|Invitee_Name 3|Invitee_Affiliation 3|Invitee_Contact 3|Visit_Date_start 3|Visit_Date_end 3|Give_talk 3|Talk_title 3|Airfare 3|Hotel_accommodation 3|Others 3|Last_approval 3|Other_airfare 3|Other_Hotel_accommodation 3|Other_Honorarium 3|Other_others 3|Date 3|
      |Name 4|4|Passport_No 4|Post 4|4|Telephone_No 4|Invitee 4|Invitee_Name 4|Invitee_Affiliation 4|Invitee_Contact 4|Visit_Date_start 4|Visit_Date_end 4|Give_talk 4|Talk_title 4|Airfare 4|Hotel_accommodation 4|Others 4|Last_approval 4|Other_airfare 4|Other_Hotel_accommodation 4|Other_Honorarium 4|Other_others 4|Date 4|
    When I delete the 3rd visitor_invitation
    Then I should see the following visitor_invitations:
      |Name|Staff id|Passport no|Post|Years at iiis|Telephone no|Invitee|Invitee name|Invitee affiliation|Invitee contact|Visit date start|Visit date end|Give talk|Talk title|Airfare|Hotel accommodation|Others|Last approval|Other airfare|Other hotel accommodation|Other honorarium|Other others|Date|
      |Name 1|1|Passport_No 1|Post 1|1|Telephone_No 1|Invitee 1|Invitee_Name 1|Invitee_Affiliation 1|Invitee_Contact 1|Visit_Date_start 1|Visit_Date_end 1|Give_talk 1|Talk_title 1|Airfare 1|Hotel_accommodation 1|Others 1|Last_approval 1|Other_airfare 1|Other_Hotel_accommodation 1|Other_Honorarium 1|Other_others 1|Date 1|
      |Name 2|2|Passport_No 2|Post 2|2|Telephone_No 2|Invitee 2|Invitee_Name 2|Invitee_Affiliation 2|Invitee_Contact 2|Visit_Date_start 2|Visit_Date_end 2|Give_talk 2|Talk_title 2|Airfare 2|Hotel_accommodation 2|Others 2|Last_approval 2|Other_airfare 2|Other_Hotel_accommodation 2|Other_Honorarium 2|Other_others 2|Date 2|
      |Name 4|4|Passport_No 4|Post 4|4|Telephone_No 4|Invitee 4|Invitee_Name 4|Invitee_Affiliation 4|Invitee_Contact 4|Visit_Date_start 4|Visit_Date_end 4|Give_talk 4|Talk_title 4|Airfare 4|Hotel_accommodation 4|Others 4|Last_approval 4|Other_airfare 4|Other_Hotel_accommodation 4|Other_Honorarium 4|Other_others 4|Date 4|
