class Product < ActiveRecord::Base
  validates :name,
    presence: true
  validates :price,
    presence: true
  validates :category_id,
    presence: true

  belongs_to :category

  def self.search(filter, search)
    joins('join categories on categories.id=products.category_id')

    if filter && filter != [""] && search.length == 0
      where('products.category_id=?', filter)
    elsif filter === [""] && search && search.class == String
      where('products.name iLIKE ?', "%#{search}%")
    elsif filter && filter != [""] && search.length > 0
      where('products.category_id=? AND products.name iLIKE ?', filter, "%#{search}%")
    else
      default_scoped
    end
  end

end
