class Product < ActiveRecord::Base
  validates :name,
    presence: true
  validates :price,
    presence: true
  validates :category_id,
    presence: true

  belongs_to :category

  def self.search(search)
    if search
      where('name iLIKE ?', "%#{search}%")
    else
      default_scoped
    end
  end

end
