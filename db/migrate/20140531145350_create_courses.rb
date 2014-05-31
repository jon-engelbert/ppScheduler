class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :teacher
      t.string :teacher2
      t.string :teacher3
      t.string :university
      t.date :start_date

      t.timestamps
    end
  end
end
