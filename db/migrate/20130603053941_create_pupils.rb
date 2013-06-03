class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.integer :grade_id
      t.integer :gender

      t.timestamps
    end
    add_index :pupils, [:grade_id]
  end
end
