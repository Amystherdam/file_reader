class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :buyer
      t.string :description
      t.float :unity_price
      t.integer :quantiti
      t.string :address
      t.string :provider

      t.timestamps
    end
  end
end
