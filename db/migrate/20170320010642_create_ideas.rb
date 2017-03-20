class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.text :content
      t.string :suit
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :ideas, [:user_id, :suit]
  end
end
