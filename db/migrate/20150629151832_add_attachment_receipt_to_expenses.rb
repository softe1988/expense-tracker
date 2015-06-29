class AddAttachmentReceiptToExpenses < ActiveRecord::Migration
  def self.up
    change_table :expenses do |t|
      t.attachment :receipt
    end
  end

  def self.down
    remove_attachment :expenses, :receipt
  end
end
