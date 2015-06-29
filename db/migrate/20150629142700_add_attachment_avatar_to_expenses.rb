class AddAttachmentAvatarToExpenses < ActiveRecord::Migration
  def self.up
    change_table :expenses do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :expenses, :avatar
  end
end
