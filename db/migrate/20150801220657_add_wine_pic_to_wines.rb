class AddWinePicToWines < ActiveRecord::Migration
  def self.up
    add_attachment :wines, :wine_pic
  end

  def self.down
    remove_attachment :wines, :wine_pic
  end
end
