class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.integer :school_id
      t.integer :completion_status

      t.timestamps
    end
  end
end
