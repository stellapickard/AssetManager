class CreateAssignTos < ActiveRecord::Migration[5.0]
  def change
    create_table :assign_tos do |t|

      t.timestamps
    end
  end
end
