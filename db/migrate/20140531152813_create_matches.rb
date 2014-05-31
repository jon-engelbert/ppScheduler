class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :begin
      t.datetime :end
      t.integer :assignment_id
      t.integer :available1_id
      t.integer :available2_id
      t.boolean :user1_response?
      t.boolean :user2_response?
      t.integer :user1_commitment
      t.integer :user2_commitment

      t.timestamps
    end
  end
end
