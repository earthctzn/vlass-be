class CreateHome < ActiveRecord::Migration[6.0]
  def change
    create_table :home do |t|
      t.string :content
    end
  end
end
