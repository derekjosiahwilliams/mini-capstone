class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders

  def sale_message
    if price < 340000 
      return "Low priced dragon. May be harder to train."
    else
      return "High priced dragon. Tends to be easier to train."
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def discounted?
    price > 340000
  end
end