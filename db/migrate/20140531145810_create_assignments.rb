class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.integer :course_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
