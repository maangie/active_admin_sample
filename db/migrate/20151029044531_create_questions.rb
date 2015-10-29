class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :image
      t.string :publish_datetime

      t.timestamps null: false
    end

    add_index :questions, :publish_datetime
  end
end
