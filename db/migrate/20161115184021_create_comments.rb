class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.integer :vote, :default=>0
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
