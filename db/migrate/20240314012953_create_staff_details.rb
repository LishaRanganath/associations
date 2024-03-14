class CreateStaffDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :staff_details do |t|
      t.string :name
      t.string :email
      t.bigint :phno
      t.belongs_to :branch
      t.belongs_to :staff_type
      t.timestamps
    end
  end
end
