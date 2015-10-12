class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.belongs_to :user, index: true
      t.belongs_to :news_item, index: true

      t.timestamps null: false
    end
  end
end
