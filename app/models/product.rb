class Product < ActiveRecord::Base
  validates :name,
    presence: true
  validates :price,
    presence: true
  validates :category_id,
    presence: true

  belongs_to :category

end
