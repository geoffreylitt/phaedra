class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :article_id
      t.timestamps
    end

    add_index :comments, :article_id
  end
end
