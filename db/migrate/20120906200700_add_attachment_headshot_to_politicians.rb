class AddAttachmentHeadshotToPoliticians < ActiveRecord::Migration
  def self.up
    change_table :politicians do |t|
      t.has_attached_file :headshot
    end
  end

  def self.down
    drop_attached_file :politicians, :headshot
  end
end
