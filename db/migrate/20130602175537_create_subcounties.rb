class CreateSubcounties < ActiveRecord::Migration
  def change
    create_table :subcounties do |t|
      t.string :subcounty_name
      t.integer :county_id

      t.timestamps
    end
      add_index :subcounties, [:county_id]
  end
end
