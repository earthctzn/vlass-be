class CreateWork < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :companyname
      t.string :jobdescription
    end
  end
end
