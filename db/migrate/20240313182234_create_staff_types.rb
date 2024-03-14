class CreateStaffTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :staff_types do |t|
      t.integer :number, unique: true
      t.string :type_staff

      t.timestamps
    end
  end
end
