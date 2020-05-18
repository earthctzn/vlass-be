class CreateWorkflow < ActiveRecord::Migration[6.0]
  def change
    create_table :workflows do |t|
      t.string :content
    end
  end
end
