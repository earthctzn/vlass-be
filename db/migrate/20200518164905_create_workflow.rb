class CreateWorkflow < ActiveRecord::Migration[6.0]
  def change
    create_table :workflow do |t|
      t.string :title
      t.string :content
    end
  end
end
