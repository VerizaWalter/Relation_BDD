class CreateTableGossipTags < ActiveRecord::Migration[6.0]
  def change
    create_table :table_gossip_tags do |t|
    	 t.belongs_to :tags, index: true
         t.belongs_to :gossips, index: true

      t.timestamps
    end
  end
end
