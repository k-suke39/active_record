class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :title, null: false
      t.integer :order, null: false
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
