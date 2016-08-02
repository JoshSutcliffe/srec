class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :phoneNumber
      t.string :cv
      t.string :video

      t.timestamps null: false
    end
  end
end
