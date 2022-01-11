class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :subject_expert, :string
  end
end
