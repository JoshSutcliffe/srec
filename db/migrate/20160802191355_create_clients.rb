class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :compnayName
      t.string :companyLocation

      t.timestamps null: false
    end
  end
end
