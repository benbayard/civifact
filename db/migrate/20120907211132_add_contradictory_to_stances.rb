class AddContradictoryToStances < ActiveRecord::Migration
  def change
    add_column :stances, :contradictory, :boolean
  end
end
