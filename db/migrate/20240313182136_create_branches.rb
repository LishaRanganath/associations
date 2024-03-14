class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :location,unique: true
      t.bigint :phno
      t.string :email

      t.timestamps
    end
  end
end
