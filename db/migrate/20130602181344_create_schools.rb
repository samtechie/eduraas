class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_name
      t.integer :parish_id

      t.timestamps
    end
      add_index :schools, [:parish_id]
  end
end
