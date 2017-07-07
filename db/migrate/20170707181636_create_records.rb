class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :artist
      t.string :title
      t.text :description
      t.string :category
      t.integer :cost

      t.timestamps
    end
  end
end
