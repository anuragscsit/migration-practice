class AddCourseDurationToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :duration, :integer
  end
end
