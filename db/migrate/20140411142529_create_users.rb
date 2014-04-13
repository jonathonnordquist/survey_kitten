class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: :false
      t.string :email, null: :false
      t.string :password_digest
      t.string :image_url default: "http://sweetlemonmag.com/wp-content/uploads/2013/08/treehouse-nick.jpg"
      t.string :filepath

      t.timestamps
    end
  end
end
