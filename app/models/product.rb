class Product < ActiveRecord::Base
  validates :name,
    presence: true
  validates :price,
    presence: true
  validates :category_id,
    presence: true

  belongs_to :category

  def self.search(search)
    if search.class == String
      where('products.name iLIKE ?', "%#{search}%") ||
      where('categories.name iLIKE ?', "%#{search}%")
    elsif search.class == Array
      where('categories.id=?', search.first)
    else
      default_scoped
    end
  end
end
