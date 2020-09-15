class Employee < ActiveRecord::Base
  has_one :store
  validates :first_name, :last_name, :hourly_rate, presence: true
  validates :hourly_rate, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 40, 
    less_than_or_equal_to: 200
  }

  before_create :generate_password_if_empty

  private
  def generate_password
    [*('a'..'z'),*('A'..'Z'),*('0'..'9')].shuffle[0,8].join
  end

  def generate_password_if_empty
    if !self.password
      self.password = generate_password
    end
  end
end
