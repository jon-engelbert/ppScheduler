#Internal data structures:
##User: 
name, email, text #, primary language, English (yes/no), teacher (yes/no)
name:string email:string cellphone:string english_speaker?:boolean teacher?:boolean student?:boolean admin?:boolean 
validates :email, confirmation: true
validates :name, :email, presence: true
validates :email, uniqueness: true
  with_options if: :is_admin? do |admin|
    admin.validates :password, length: { minimum: 10 }
    admin.validates :email, presence: true
  end
  

##ProjectOwner:
id:primary_key, title:string, teacher:string, teacher2:string, teacher3:string
rails generate scaffold Course  name:string teacher:string teacher2:string teacher3:string university:string start_date:date
has_many :Projects

##Membership:
student_id (fk):integer
course_id (fk):integer


##Project: 
project_owner_id(fk), title:string, due_date:datetime
belongs_to :ProjectOwner
has_many: Availability

##Available: 
user_id(fk):integer,  begin:datetime, end:datetime, project_id(fk):integer, priority:integer (high/medium/low), active?:boolean 
belongs_to :user
belongs_to :project


##Match:
begin:datetime, end:datetime, project_id(fk):integer, available1_id(fk):integer, available2_id(fk):integer, user1_responded?:boolean, user2_responded?:boolean, user1_commitment:integer, user2_commitment:integer
belongs_to :project
belongs_to :available


#algorithms:
##Matchmaker:
Every so often, go through availables and find matches, i.e. other user availabilities matching the project and within an overlapping time window, between those who are not yet committed or cancelled out.
Then notify the parties of the potential match.

