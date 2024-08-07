class CreateScheduleCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :schedule_courses do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
