class CreateHome < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :content
    end
  end
end
