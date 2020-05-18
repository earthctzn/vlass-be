class CreateAbout < ActiveRecord::Migration[6.0]
  def change
    create_table :abouts do |t|
      t.string :content
    end
  end
end
