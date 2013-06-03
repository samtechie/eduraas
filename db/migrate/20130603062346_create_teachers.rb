class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :school_id
      t.integer :gender
      t.integer :payroll_status
      t.integer :training_status

      t.timestamps
    end
  end
end
