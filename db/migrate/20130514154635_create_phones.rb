class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :fkMemberID
      t.string :whichPhone
      t.string :phoneNumber

      t.timestamps
    end
  end
end
