class Employees < ActiveRecord::Migration[5.0]
  def change
  	create_table :employees do |t|
    	t.string :fist_name
    	t.string :last_name
    	t.string :department
      	t.timestamps
     end
  end
end
