class CreateReadingmaterials < ActiveRecord::Migration
  def change
    create_table :readingmaterials do |t|
      t.integer :grade_id
      t.integer :math
      t.integer :english
      t.integer :science
      t.integer :sst

      t.timestamps
    end
  end
end
