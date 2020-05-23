class CreateWork < ActiveRecord::Migration[6.0]
  def change
    create_table :work do |t|
      t.string :company
      t.string :job
    end
  end
end
