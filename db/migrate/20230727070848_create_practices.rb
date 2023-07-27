class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.string :example_answer, null: false
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
