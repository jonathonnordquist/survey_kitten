class CreateSurveys < ActiveRecord::Migration
  def change
    create_tables :surveys do |t|
      t.integer :creator_id
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
