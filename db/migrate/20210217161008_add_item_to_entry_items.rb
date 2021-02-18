class AddItemToEntryItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :entry_items, :item, null: false, foreign_key: true
  end
end
