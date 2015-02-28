class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :level
      t.string :stype
      
      t.timestamps
    end
  end
end
