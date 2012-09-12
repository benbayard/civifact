class ChangeNetWorthToIneger < ActiveRecord::Migration
  def up
  	change_column :politicians, :net_worth, :integer
  end

  def down
  	change_column :politicians, :net_worth, :string
  end
end
