class AddWebsiteToPoliticians < ActiveRecord::Migration
  def change
    add_column :politicians, :website, :string
  end
end
