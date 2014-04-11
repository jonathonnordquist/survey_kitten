class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: :false
      t.string :email, null: :false
      t.string :password_digest
      t.string :image_url

      t.timestamps
    end
  end
end
