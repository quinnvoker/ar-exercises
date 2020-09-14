class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }

  validate :has_at_least_one_apparel_type

  def has_at_least_one_apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:apparel, "need at least one apparel type")
    end
  end
end
