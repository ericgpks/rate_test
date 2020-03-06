class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :m_category
      t.string :title
      t.text :content
      t.float :score
      t.timestamps
    end
  end
end
