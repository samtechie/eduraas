class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :region_name

      t.timestamps
    end
    add_index :regions, [:region_name]
  end
end
