class CreateAbout < ActiveRecord::Migration[6.0]
  def change
    create_table :about do |t|
      t.string :title
      t.string :content
    end
  end
end
