class AddReToReadingmaterials < ActiveRecord::Migration
  def change
    add_column :readingmaterials, :re, :integer
  end
end
