class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :county_name
      t.integer :district_id

      t.timestamps
    end
      add_index :counties, [:district_id]
  end
end
