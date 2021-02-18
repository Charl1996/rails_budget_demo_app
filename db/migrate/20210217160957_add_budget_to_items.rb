class AddBudgetToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :budget, null: false, foreign_key: true
  end
end
