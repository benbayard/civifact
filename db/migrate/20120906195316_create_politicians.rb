class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.datetime :birthdate
      t.string :education
      t.decimal :net_worth
      t.string :current_position
      t.string :previous_position

      t.timestamps
    end
  end
end
