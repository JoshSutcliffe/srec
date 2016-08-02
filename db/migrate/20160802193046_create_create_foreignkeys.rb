class CreateCreateForeignkeys < ActiveRecord::Migration
  def change
    
    add_reference :applications, :candidate, index: true, foreign_key: true
    add_reference :jobs, :application, index: true, foreign_key: true
    add_reference :clients, :job, index: true, foreign_key: true

  end
end
