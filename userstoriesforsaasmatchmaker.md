Story Summary (in this case replace "Untitled Post" with this) As a (TYPE_OF_STAKEHOLDER) So that (THE_GOAL_OR_BUSINESS_VALUE) I would like to (SPECIFIC_SITE_INTERACTION)

Add Assignment (teacher)
As a teacher, 
I’d like to add an assignment to the system (assignment name, max # participants, etc)
so that the students (pair programmers) can pair on that assignment.
Add Assignment (student)
As a user, 
I’d like to add an assignment to the system (assignment name, max # participants, etc)
so that the students (pair programmers) can pair on that assignment.
Scenario: Add new assignment (pass)
Given that a user is logged in
And the user has permission to add the new assignment
And the user is on the new assignment page
When the user specifies the new assignment (name: “project 1”, course: “ESAAS 169.1”)
And the user adds the new assignment
Then the new assignment appears in the assigment list
Scenario: Add new assignment (fails because duplicate)
Given that a user is logged in
And the user has permission to add the new assignment
And the user is on the new assignment page
When the user specifies the new assignment (name: “project 1”, course: “ESAAS 169.1”)
And the assignment by that name for that class already exists
And the user adds the new assignment
Then the new assignment does not get duplicated in the assigment list
And a warning appears

Sign up as a student
As a student,
I’d like to sign up 
[and possibly specify my experience levels with various technologies,e.g., ruby, rails, javascript, and languages]
so that I can then be part of the pair programming network and share relevant information that may help others decide whether to choose me as a partner.
Scenario: sign up (success)
Given PP scheduler is running
And the user is not signed up
When the user signs up as a student
Then the user will appear in the users list as a student

Scenario: sign up (fails because duplicate)
Given PP scheduler is running
And the user is signed up already
When the user signs up as a student
Then the user will be alerted that he already exists in the database
And the user will not be added a 2nd time

Specify availability to work on an assignment
As a student,
I’d like to specify one or more time slots for an assignment, and for each,  the time interval within which I can work on it, along with preference for that time slot
So that the system can match me up with other students who want to work on that assignment at the same time.
Scenario: specify availabilty (success)
Given user is logged in
and user has selected an assignment (and class)
When user specifies time available and preference for that time
Then time available for assignment for user appears on the user’s availability calendar.
Scenario: specify availabilty (success)
Given user is logged in
and user has selected an assignment (and class)
When user specifies time available and preference for that time
And the time slot overlaps with a committed time slot for the user
Then a warning appears, 
and the time slot / assignment for user is not added to the user’s availability calendar.
And the user is redirected back to the same page with the same settings.

Prioritize availability to work on an assignment
As a student,
I’d like to specify times I can work on an assignment with varying levels of preference.
So that the system can match me up with other students who want to work on that assignment at the same time, searching on the basis of highest preference first.

Notification of pair programming match(es)
As a student
I’d like to receive notification (e.g. e-mail or text message) of a potential match
So that I can accept or decline it
Scenario: 

Accept /Decline pair programming match
As a student
I’d like to accept or decline a pair programming match
So that the system can solidify the match.

Application algorithms:
I'm not certain what the algorithm for matching should be... maybe just look for pairs of "Available" records that match on the assignment and also overlap on times by at least an hour,and then go through those and find the one with the highest sum of 'prirority' for the two with at least an hour, and if there's a tie then choose the one with the longest available time perhaps.    Anyway, I think that it will be good for the app to set up the matches automatically.  

User story:
App automatically sets up matches
As the app
I'd like to match up users with the same assignment and overlapping times
So that users can pair program together
Feature: 
Given users with matching assignments and overlapping times
When the auto-matching algorithm runs,
Then generate a matching
And notify the matched users of the potential match

User sets up matches
As a user
I'd like to match up with another user with the same assignment and overlapping times
So that users can pair program together
Feature: 
Given an  “available” listing with an assignment and a given times
When the user chooses this available
Then generate a matching available
And force a match
And notify the “other”matched user of the potential match


There should also be a way for users to explicity search through the available times for others and then choose to set up a match explicitly... give it some thought, no rush.
Activity Feed to Peak Interest
posted Jul 12, 2013, 3:57 AM by Dan Schmidt   [ updated Jul 12, 2013, 3:57 AM ]
As a visitor to the site
So that I can see what users of the site are doing
I would to see a current activity feed

Coping with evolving/uncertain schedules
posted May 3, 2013, 4:33 AM by Sam Joseph
As a new or existing user
So that I can avoid having to come back to update my schedule every day
I would like to be able to avoid entering lots of schedule data, make variable degrees of commitment, or just see when others are available so that I can adjust my schedule to fit

Browse who/what is available for pairing
posted May 3, 2013, 4:31 AM by Sam Joseph
As a new user 
So that I can decide whether I would like to bother entering my details
I want to be able to browse the kinds of people and projects I would be pairing on

Add Pairings to my Google Calendar
posted Apr 19, 2013, 2:44 PM by Bill Auger
As a Saas-ELLS-Projects team member
So that i do not need to check the calendar on this site everyday
I would like to have my scheduled PP pairings automatically added to my google calendar

Email Notifications
posted Apr 19, 2013, 2:42 PM by Bill Auger
As a Saas-ELLS-Projects team member
So that i do not need to check the calendar on this site everyday
I would like to receive email invitations when i have been scheduled for PP session


