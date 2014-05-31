Internal data structures:
User: 
name, email, text #, primary language, English (yes/no), teacher (yes/no)
name:string email:string cellphone:string english_speaker?:boolean teacher?:boolean student?:boolean admin?:boolean (id:primary_key)

CourseStudent: 
user (fk),course, years of relevant experience

Course:
id:primary_key, name:string, teacher:string, teacher2:string, teacher3:string
rails generate scaffold Course  name:string teacher:string teacher2:string teacher3:string university:string start_date:date
change name to title
has_many :assignments

enrollment:
student_id (fk):integer
course_id (fk):integer


assignment: 
course_id(fk), title, due_date:datetime
belongs_to :course
has_many: availability

availabile: 
student_id(fk):integer,  begin:datetime, end:datetime, assignment_id(fk):integer, priority:integer (high/medium/low), active?:boolean 
change student_id to user_id
belongs_to :user
belongs_to :assignment


Match:
begin:datetime, end:datetime, assignment_id(fk):integer, available1_id(fk):integer, available2_id(fk):integer, user1_responded?:boolean, user2_responded?:boolean, user1_commitment:integer, user2_commitment:integer
belongs_to :assignment
belongs_to :available


c:\Users\jon\RailsProjects\ppScheduler>rails generate scaffold Match 
begin:datetime 
end:datetime 
assignment_id:integer 
available1_id:integer 
available2_id:integer 
user1_response?:boolean 
user2_response?:boolean 
user1_commitment:integer 
user2_commitment:integer

commitment:
student_id(fk):integer, student_commit_level (solid, maybe, bug-off), potential match (fk)

algorithm:
Matchmaker:
Every so often, go through availabiities and find matches, i.e. other student availabilities matching the assignment and within an overlapping time window, between those who are not yet committed or cancelled out.
Then notify the parties of the potential match.

