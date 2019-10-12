class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items
end
