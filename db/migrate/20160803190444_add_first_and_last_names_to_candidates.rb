class AddFirstAndLastNamesToCandidates < ActiveRecord::Migration
  def change

    remove_column :candidates, :name

    add_column :candidates, :first_name, :string
    add_column :candidates, :last_name, :string

  end
end
