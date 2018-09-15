@mod @mod_choice
Feature: When more than 100 responses are available, they are paginated (100 per page)
  In order to effectively display popular choice outcomes
  As a user
  I need to publish only 100 responses per page, and browse through all of them.

  Background:
    Given the following "users" exist:
      | username | firstname | lastname | email |
      | teacher1 | Teacher | 1 | teacher1@example.com |
      | student1 | Student | 1 | student1@example.com |
      | student2 | Student | 2 | student2@example.com |
      | student3 | Student | 3 | student3@example.com |
      | student4 | Student | 4 | student4@example.com |
      | student5 | Student | 5 | student5@example.com |
      | student6 | Student | 6 | student6@example.com |
      | student7 | Student | 7 | student7@example.com |
      | student8 | Student | 8 | student8@example.com |
      | student9 | Student | 9 | student9@example.com |
      | student10 | Student | 10 | student10@example.com |
      | student11 | Student | 11 | student11@example.com |
      | student12 | Student | 12 | student12@example.com |
      | student13 | Student | 13 | student13@example.com |
      | student14 | Student | 14 | student14@example.com |
      | student15 | Student | 15 | student15@example.com |
      | student16 | Student | 16 | student16@example.com |
      | student17 | Student | 17 | student17@example.com |
      | student18 | Student | 18 | student18@example.com |
      | student19 | Student | 19 | student19@example.com |
      | student20 | Student | 20 | student20@example.com |
      | student21 | Student | 21 | student21@example.com |
      | student22 | Student | 22 | student22@example.com |
      | student23 | Student | 23 | student23@example.com |
      | student24 | Student | 24 | student24@example.com |
      | student25 | Student | 25 | student25@example.com |
      | student26 | Student | 26 | student26@example.com |
      | student27 | Student | 27 | student27@example.com |
      | student28 | Student | 28 | student28@example.com |
      | student29 | Student | 29 | student29@example.com |
      | student30 | Student | 30 | student30@example.com |
      | student31 | Student | 31 | student31@example.com |
      | student32 | Student | 32 | student32@example.com |
      | student33 | Student | 33 | student33@example.com |
      | student34 | Student | 34 | student34@example.com |
      | student35 | Student | 35 | student35@example.com |
      | student36 | Student | 36 | student36@example.com |
      | student37 | Student | 37 | student37@example.com |
      | student38 | Student | 38 | student38@example.com |
      | student39 | Student | 39 | student39@example.com |
      | student40 | Student | 40 | student40@example.com |
      | student41 | Student | 41 | student41@example.com |
      | student42 | Student | 42 | student42@example.com |
      | student43 | Student | 43 | student43@example.com |
      | student44 | Student | 44 | student44@example.com |
      | student45 | Student | 45 | student45@example.com |
      | student46 | Student | 46 | student46@example.com |
      | student47 | Student | 47 | student47@example.com |
      | student48 | Student | 48 | student48@example.com |
      | student49 | Student | 49 | student49@example.com |
      | student50 | Student | 50 | student50@example.com |
      | student51 | Student | 51 | student51@example.com |
      | student52 | Student | 52 | student52@example.com |
      | student53 | Student | 53 | student53@example.com |
      | student54 | Student | 54 | student54@example.com |
      | student55 | Student | 55 | student55@example.com |
      | student56 | Student | 56 | student56@example.com |
      | student57 | Student | 57 | student57@example.com |
      | student58 | Student | 58 | student58@example.com |
      | student59 | Student | 59 | student59@example.com |
      | student60 | Student | 60 | student60@example.com |
      | student61 | Student | 61 | student61@example.com |
      | student62 | Student | 62 | student62@example.com |
      | student63 | Student | 63 | student63@example.com |
      | student64 | Student | 64 | student64@example.com |
      | student65 | Student | 65 | student65@example.com |
      | student66 | Student | 66 | student66@example.com |
      | student67 | Student | 67 | student67@example.com |
      | student68 | Student | 68 | student68@example.com |
      | student69 | Student | 69 | student69@example.com |
      | student70 | Student | 70 | student70@example.com |
      | student71 | Student | 71 | student71@example.com |
      | student72 | Student | 72 | student72@example.com |
      | student73 | Student | 73 | student73@example.com |
      | student74 | Student | 74 | student74@example.com |
      | student75 | Student | 75 | student75@example.com |
      | student76 | Student | 76 | student76@example.com |
      | student77 | Student | 77 | student77@example.com |
      | student78 | Student | 78 | student78@example.com |
      | student79 | Student | 79 | student79@example.com |
      | student80 | Student | 80 | student80@example.com |
      | student81 | Student | 81 | student81@example.com |
      | student82 | Student | 82 | student82@example.com |
      | student83 | Student | 83 | student83@example.com |
      | student84 | Student | 84 | student84@example.com |
      | student85 | Student | 85 | student85@example.com |
      | student86 | Student | 86 | student86@example.com |
      | student87 | Student | 87 | student87@example.com |
      | student88 | Student | 88 | student88@example.com |
      | student89 | Student | 89 | student89@example.com |
      | student90 | Student | 90 | student90@example.com |
      | student91 | Student | 91 | student91@example.com |
      | student92 | Student | 92 | student92@example.com |
      | student93 | Student | 93 | student93@example.com |
      | student94 | Student | 94 | student94@example.com |
      | student95 | Student | 95 | student95@example.com |
      | student96 | Student | 96 | student96@example.com |
      | student97 | Student | 97 | student97@example.com |
      | student98 | Student | 98 | student98@example.com |
      | student99 | Student | 99 | student99@example.com |
      | student100 | Student | 100 | student100@example.com |
      | student101 | Student | 101 | student101@example.com |
      | student102 | Student | 102 | student102@example.com |
      | student103 | Student | 103 | student103@example.com |
      | student104 | Student | 104 | student104@example.com |
    And the following "courses" exist:
      | fullname | shortname | category |
      | Course 1 | C1 | 0 |
    And the following "course enrolments" exist:
      | user | course | role |
      | teacher1 | C1 | editingteacher |
      |	student1	|	C1	|	student	|
      |	student2	|	C1	|	student	|
      |	student3	|	C1	|	student	|
      |	student4	|	C1	|	student	|
      |	student5	|	C1	|	student	|
      |	student6	|	C1	|	student	|
      |	student7	|	C1	|	student	|
      |	student8	|	C1	|	student	|
      |	student9	|	C1	|	student	|
      |	student10	|	C1	|	student	|
      |	student11	|	C1	|	student	|
      |	student12	|	C1	|	student	|
      |	student13	|	C1	|	student	|
      |	student14	|	C1	|	student	|
      |	student15	|	C1	|	student	|
      |	student16	|	C1	|	student	|
      |	student17	|	C1	|	student	|
      |	student18	|	C1	|	student	|
      |	student19	|	C1	|	student	|
      |	student20	|	C1	|	student	|
      |	student21	|	C1	|	student	|
      |	student22	|	C1	|	student	|
      |	student23	|	C1	|	student	|
      |	student24	|	C1	|	student	|
      |	student25	|	C1	|	student	|
      |	student26	|	C1	|	student	|
      |	student27	|	C1	|	student	|
      |	student28	|	C1	|	student	|
      |	student29	|	C1	|	student	|
      |	student30	|	C1	|	student	|
      |	student31	|	C1	|	student	|
      |	student32	|	C1	|	student	|
      |	student33	|	C1	|	student	|
      |	student34	|	C1	|	student	|
      |	student35	|	C1	|	student	|
      |	student36	|	C1	|	student	|
      |	student37	|	C1	|	student	|
      |	student38	|	C1	|	student	|
      |	student39	|	C1	|	student	|
      |	student40	|	C1	|	student	|
      |	student41	|	C1	|	student	|
      |	student42	|	C1	|	student	|
      |	student43	|	C1	|	student	|
      |	student44	|	C1	|	student	|
      |	student45	|	C1	|	student	|
      |	student46	|	C1	|	student	|
      |	student47	|	C1	|	student	|
      |	student48	|	C1	|	student	|
      |	student49	|	C1	|	student	|
      |	student50	|	C1	|	student	|
      |	student51	|	C1	|	student	|
      |	student52	|	C1	|	student	|
      |	student53	|	C1	|	student	|
      |	student54	|	C1	|	student	|
      |	student55	|	C1	|	student	|
      |	student56	|	C1	|	student	|
      |	student57	|	C1	|	student	|
      |	student58	|	C1	|	student	|
      |	student59	|	C1	|	student	|
      |	student60	|	C1	|	student	|
      |	student61	|	C1	|	student	|
      |	student62	|	C1	|	student	|
      |	student63	|	C1	|	student	|
      |	student64	|	C1	|	student	|
      |	student65	|	C1	|	student	|
      |	student66	|	C1	|	student	|
      |	student67	|	C1	|	student	|
      |	student68	|	C1	|	student	|
      |	student69	|	C1	|	student	|
      |	student70	|	C1	|	student	|
      |	student71	|	C1	|	student	|
      |	student72	|	C1	|	student	|
      |	student73	|	C1	|	student	|
      |	student74	|	C1	|	student	|
      |	student75	|	C1	|	student	|
      |	student76	|	C1	|	student	|
      |	student77	|	C1	|	student	|
      |	student78	|	C1	|	student	|
      |	student79	|	C1	|	student	|
      |	student80	|	C1	|	student	|
      |	student81	|	C1	|	student	|
      |	student82	|	C1	|	student	|
      |	student83	|	C1	|	student	|
      |	student84	|	C1	|	student	|
      |	student85	|	C1	|	student	|
      |	student86	|	C1	|	student	|
      |	student87	|	C1	|	student	|
      |	student88	|	C1	|	student	|
      |	student89	|	C1	|	student	|
      |	student90	|	C1	|	student	|
      |	student91	|	C1	|	student	|
      |	student92	|	C1	|	student	|
      |	student93	|	C1	|	student	|
      |	student94	|	C1	|	student	|
      |	student95	|	C1	|	student	|
      |	student96	|	C1	|	student	|
      |	student97	|	C1	|	student	|
      |	student98	|	C1	|	student	|
      |	student99	|	C1	|	student	|
      |	student100	|	C1	|	student	|
      |	student101	|	C1	|	student	|
      |	student102	|	C1	|	student	|
      |	student103	|	C1	|	student	|
      |	student104	|	C1	|	student	|
    And I log in as "teacher1"
    And I follow "Course 1"
    And I turn editing mode on
    And I add a "Choice" to section "1" and I fill the form with:
      | Choice name | Choice 1 |
      | Description | Choice Description |
      | Display mode for the options | Display vertically |
      | Publish results | Always show results to students |
      | Privacy of results | Publish full results, showing names and their choices |
      | option[0] | Option 1 |
      | option[1] | Option 2 |
    And I log out
    # Notice: The step below is very slow when run with 100+ entries, and may take 5+ minutes.
    And the following choices are made:
      | username | course | choice | option |
      | student1 | Course 1 | Choice 1 | Option 1 |
      | student2 | Course 1 | Choice 1 | Option 1 |
      | student3 | Course 1 | Choice 1 | Option 1 |
      | student4 | Course 1 | Choice 1 | Option 2 |
      | student5 | Course 1 | Choice 1 | Option 1 |
      | student6 | Course 1 | Choice 1 | Option 1 |
      | student7 | Course 1 | Choice 1 | Option 1 |
      | student8 | Course 1 | Choice 1 | Option 2 |
      | student9 | Course 1 | Choice 1 | Option 1 |
      | student10 | Course 1 | Choice 1 | Option 1 |
      | student11 | Course 1 | Choice 1 | Option 1 |
      | student12 | Course 1 | Choice 1 | Option 2 |
      | student13 | Course 1 | Choice 1 | Option 1 |
      | student14 | Course 1 | Choice 1 | Option 1 |
      | student15 | Course 1 | Choice 1 | Option 1 |
      | student16 | Course 1 | Choice 1 | Option 2 |
      | student17 | Course 1 | Choice 1 | Option 1 |
      | student18 | Course 1 | Choice 1 | Option 1 |
      | student19 | Course 1 | Choice 1 | Option 1 |
      | student20 | Course 1 | Choice 1 | Option 2 |
      | student21 | Course 1 | Choice 1 | Option 1 |
      | student22 | Course 1 | Choice 1 | Option 1 |
      | student23 | Course 1 | Choice 1 | Option 1 |
      | student24 | Course 1 | Choice 1 | Option 2 |
      | student25 | Course 1 | Choice 1 | Option 1 |
      | student26 | Course 1 | Choice 1 | Option 1 |
      | student27 | Course 1 | Choice 1 | Option 1 |
      | student28 | Course 1 | Choice 1 | Option 2 |
      | student29 | Course 1 | Choice 1 | Option 1 |
      | student30 | Course 1 | Choice 1 | Option 1 |
      | student31 | Course 1 | Choice 1 | Option 1 |
      | student32 | Course 1 | Choice 1 | Option 2 |
      | student33 | Course 1 | Choice 1 | Option 1 |
      | student34 | Course 1 | Choice 1 | Option 1 |
      | student35 | Course 1 | Choice 1 | Option 1 |
      | student36 | Course 1 | Choice 1 | Option 2 |
      | student37 | Course 1 | Choice 1 | Option 1 |
      | student38 | Course 1 | Choice 1 | Option 1 |
      | student39 | Course 1 | Choice 1 | Option 1 |
      | student40 | Course 1 | Choice 1 | Option 2 |
      | student41 | Course 1 | Choice 1 | Option 1 |
      | student42 | Course 1 | Choice 1 | Option 1 |
      | student43 | Course 1 | Choice 1 | Option 1 |
      | student44 | Course 1 | Choice 1 | Option 2 |
      | student45 | Course 1 | Choice 1 | Option 1 |
      | student46 | Course 1 | Choice 1 | Option 1 |
      | student47 | Course 1 | Choice 1 | Option 1 |
      | student48 | Course 1 | Choice 1 | Option 2 |
      | student49 | Course 1 | Choice 1 | Option 1 |
      | student50 | Course 1 | Choice 1 | Option 1 |
      | student51 | Course 1 | Choice 1 | Option 1 |
      | student52 | Course 1 | Choice 1 | Option 2 |
      | student53 | Course 1 | Choice 1 | Option 1 |
      | student54 | Course 1 | Choice 1 | Option 1 |
      | student55 | Course 1 | Choice 1 | Option 1 |
      | student56 | Course 1 | Choice 1 | Option 2 |
      | student57 | Course 1 | Choice 1 | Option 1 |
      | student58 | Course 1 | Choice 1 | Option 1 |
      | student59 | Course 1 | Choice 1 | Option 1 |
      | student60 | Course 1 | Choice 1 | Option 2 |
      | student61 | Course 1 | Choice 1 | Option 1 |
      | student62 | Course 1 | Choice 1 | Option 1 |
      | student63 | Course 1 | Choice 1 | Option 1 |
      | student64 | Course 1 | Choice 1 | Option 2 |
      | student65 | Course 1 | Choice 1 | Option 1 |
      | student66 | Course 1 | Choice 1 | Option 1 |
      | student67 | Course 1 | Choice 1 | Option 1 |
      | student68 | Course 1 | Choice 1 | Option 2 |
      | student69 | Course 1 | Choice 1 | Option 1 |
      | student70 | Course 1 | Choice 1 | Option 1 |
      | student71 | Course 1 | Choice 1 | Option 1 |
      | student72 | Course 1 | Choice 1 | Option 2 |
      | student73 | Course 1 | Choice 1 | Option 1 |
      | student74 | Course 1 | Choice 1 | Option 1 |
      | student75 | Course 1 | Choice 1 | Option 1 |
      | student76 | Course 1 | Choice 1 | Option 2 |
      | student77 | Course 1 | Choice 1 | Option 1 |
      | student78 | Course 1 | Choice 1 | Option 1 |
      | student79 | Course 1 | Choice 1 | Option 1 |
      | student80 | Course 1 | Choice 1 | Option 2 |
      | student81 | Course 1 | Choice 1 | Option 1 |
      | student82 | Course 1 | Choice 1 | Option 1 |
      | student83 | Course 1 | Choice 1 | Option 1 |
      | student84 | Course 1 | Choice 1 | Option 2 |
      | student85 | Course 1 | Choice 1 | Option 1 |
      | student86 | Course 1 | Choice 1 | Option 1 |
      | student87 | Course 1 | Choice 1 | Option 1 |
      | student88 | Course 1 | Choice 1 | Option 2 |
      | student89 | Course 1 | Choice 1 | Option 1 |
      | student90 | Course 1 | Choice 1 | Option 1 |
      | student91 | Course 1 | Choice 1 | Option 1 |
      | student92 | Course 1 | Choice 1 | Option 2 |
      | student93 | Course 1 | Choice 1 | Option 1 |
      | student94 | Course 1 | Choice 1 | Option 1 |
      | student95 | Course 1 | Choice 1 | Option 1 |
      | student96 | Course 1 | Choice 1 | Option 2 |
      | student97 | Course 1 | Choice 1 | Option 1 |
      | student98 | Course 1 | Choice 1 | Option 1 |
      | student99 | Course 1 | Choice 1 | Option 1 |
      | student100 | Course 1 | Choice 1 | Option 2 |
      | student101 | Course 1 | Choice 1 | Option 1 |
      | student102 | Course 1 | Choice 1 | Option 1 |
      | student103 | Course 1 | Choice 1 | Option 1 |
      | student104 | Course 1 | Choice 1 | Option 2 |

  @javascript
  Scenario: Show paginated results
    # Pagination can be checked indirectly via the Prev/Next buttons. With 104 records:
    # - there should be two result pages, and only two;
    # - there can be no Prev button on the first page and no Next on the second.
    Given I log in as "student1"
    And I follow "Course 1"
    When I follow "Choice 1"
    Then I should see "Responses"
    And I should see "Your selection: Option 1"
    And "Next" "button" should be visible
    And "Previous" "button" should not be visible
    And I click on "Next" "button"
    And "Next" "button" should not be visible
    And "Previous" "button" should be visible
    And I log out

