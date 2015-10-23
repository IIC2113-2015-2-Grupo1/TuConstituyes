class CreateJoinTableSourcesUsers < ActiveRecord::Migration
  def change
    create_join_table :sources, :users do |t|
      t.belongs_to :source, index: true
      t.belongs_to :user, index: true
    end
  end
end
