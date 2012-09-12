class CreateStances < ActiveRecord::Migration
  def change
    create_table :stances do |t|
      t.string :content
      t.string :citation
      t.datetime :citation_date
      t.integer :politician_id
      t.integer :issue_id
      t.timestamps
    end
  end
end
