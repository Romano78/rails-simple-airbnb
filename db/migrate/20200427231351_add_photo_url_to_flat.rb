class AddPhotoUrlToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :photo_url, :string
  end
end
