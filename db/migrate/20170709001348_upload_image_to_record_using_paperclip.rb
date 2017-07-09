class UploadImageToRecordUsingPaperclip < ActiveRecord::Migration[5.1]
  def up
    add_attachment :records, :avatar
  end

  def down
    remove_attachment :records, :avatar
  end
end
