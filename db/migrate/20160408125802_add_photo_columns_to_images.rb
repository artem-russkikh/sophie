class AddPhotoColumnsToImages < ActiveRecord::Migration
  def up
  	add_attachment :images, :photo
  end

  def down
  	remove_attachment :images, :photo
  end
end
