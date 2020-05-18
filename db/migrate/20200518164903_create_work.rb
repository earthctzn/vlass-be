class CreateWork < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :company
      t.string :tasks
    end
  end
end
