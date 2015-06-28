class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :activity
      t.integer :vendor_id
      t.integer :client_id
      t.float :cost
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
