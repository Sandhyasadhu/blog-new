class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true, index:true

      t.timestamps
    end
  end
end