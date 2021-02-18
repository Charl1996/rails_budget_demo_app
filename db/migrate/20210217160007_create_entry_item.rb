class CreateEntryItem < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_items do |t|
      t.string :integer

      t.timestamps
    end
  end
end
