class AddApprovedToStances < ActiveRecord::Migration
  def change
    add_column :stances, :approved, :boolean
  end
end
