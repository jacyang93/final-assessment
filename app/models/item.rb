class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploaders :pictures, PicturesUploader

  def self.search(search)
    if search
      where("title ILIKE ?", "%#{search}%")
    end
  end

end
