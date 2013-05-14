class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :fkMemberID
      t.string :emailAddress
      t.string :emailWho

      t.timestamps
    end
  end
end
