class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade_name
      t.integer :school_id
      t.integer :stream_number
      t.integer :teacher_number
      t.integer :desk_number
      t.integer :year
      t.integer :quarter

      t.timestamps
    end
      add_index :grades, [:school_id]
  end
end
