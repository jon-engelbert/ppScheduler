class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cellphone
      t.boolean :english_speaker?
      t.boolean :teacher?
      t.boolean :admin?
      t.boolean :student?

      t.timestamps
    end
  end
end
