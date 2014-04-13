class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :text
      t.string :image_url
      t.string :filepath

      t.timestamps
    end
  end
end
