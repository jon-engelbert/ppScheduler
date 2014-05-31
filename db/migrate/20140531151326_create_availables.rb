class CreateAvailables < ActiveRecord::Migration
  def change
    create_table :availables do |t|
      t.integer :student_id
      t.datetime :begin
      t.datetime :end
      t.integer :assignment_id
      t.integer :proirity
      t.boolean :active?

      t.timestamps
    end
  end
end
