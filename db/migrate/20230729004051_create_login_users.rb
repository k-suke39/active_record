class CreateLoginUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :login_users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name, null: false
      t.string :image_url, null: false

      t.timestamps
    end
    add_index :login_users, %i[provider uid], unique: true
  end
end
