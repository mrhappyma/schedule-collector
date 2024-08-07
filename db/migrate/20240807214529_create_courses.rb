class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :teacher
      t.integer :period
      t.integer :room

      t.timestamps
    end
  end
end
