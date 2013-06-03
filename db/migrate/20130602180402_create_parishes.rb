class CreateParishes < ActiveRecord::Migration
  def change
    create_table :parishes do |t|
      t.string :parish_name
      t.integer :subcounty_id

      t.timestamps
    end
      add_index :parishes, [:subcounty_id]
  end
end
