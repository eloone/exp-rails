class AddColumnAgeToPersonnes < ActiveRecord::Migration
  def change
  	add_column :personnes , :age , :integer 
  end
end
