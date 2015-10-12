class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :starred
      t.belongs_to :news_item, index: true

      t.timestamps null: false
    end
  end
end
