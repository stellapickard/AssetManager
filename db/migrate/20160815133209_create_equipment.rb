class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
    	t.string :name #laptop name like Dell
    	t.string :type #laptop
    	t.string :serial_no
    	t.string :assigned_to #employee
    	t.string :status #employee, storage, repairs
        t.timestamps
    end
  end
end
