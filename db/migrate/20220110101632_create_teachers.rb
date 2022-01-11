class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.text :name
      t.integer :experience

      t.timestamps
    end
  end
end
