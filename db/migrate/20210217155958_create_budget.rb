class CreateBudget < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
