class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.text :critique
      t.integer :section_id
      t.timestamps
    end

    add_index :articles, :section_id
  end
end
