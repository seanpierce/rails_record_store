class RemoveImageColumnFromRecords < ActiveRecord::Migration[5.1]
  def change
    remove_column :records, :image
  end
end
