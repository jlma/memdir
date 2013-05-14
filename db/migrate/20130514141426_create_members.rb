class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :lastName
      t.string	:husbandName 
      t.string :wifeName
      t.string :fmcaNumber
      t.string :photoFile

      t.timestamps
    end
  end
end
