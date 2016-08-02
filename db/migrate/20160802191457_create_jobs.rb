class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :companyName
      t.string :title
      t.string :description
      t.string :industry
      t.string :hours
      t.string :logo
      t.string :video
      t.string :location

      t.timestamps null: false
    end
  end
end
