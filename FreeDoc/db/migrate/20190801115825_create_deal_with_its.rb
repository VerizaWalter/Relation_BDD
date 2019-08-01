class CreateDealWithIts < ActiveRecord::Migration[6.0]
  def change
    create_table :deal_with_its do |t|

      t.timestamps
    end
  end
end
