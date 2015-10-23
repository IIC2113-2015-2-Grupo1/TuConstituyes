class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :url
      t.belongs_to :source, index: true
      t.belongs_to :tag, index: true

      t.timestamps null: false
    end
  end
end
