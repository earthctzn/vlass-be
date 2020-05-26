class CreateHome < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :content
    end
  end
end
