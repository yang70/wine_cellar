class Wine < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 1 }

  has_attached_file :wine_pic, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x',
  }

  validates_attachment_content_type :wine_pic, :content_type => /\Aimage\/.*\Z/
end
