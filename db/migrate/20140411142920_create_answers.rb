class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :participation_id
      t.integer :choice_id
      t.text    :text_answer
      t.timestamps
    end
  end
end
