class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.integer :lesson_type, null: false, default: 0
      t.text :description, null: false

      t.timestamps
    end
  end
end
