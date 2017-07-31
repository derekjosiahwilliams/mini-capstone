class CartedProduct < ApplicationRecord

  validates :quantity, presence: true, numericality: :greater_than-0
  

  belongs_to :order, optional: true
  belongs_to :product, optional: :true
  belongs_to :user, optional: :true

  def calculate_subtotal_tax_and_total
    calculated_subtotal = quantity * product.price
    calculated_tax = quantity * product.tax
    calculated_total = calculated_subtotal + calculated_tax
    update(subtotal: calculated_subtotal, tax: calculated_tax, total: calculated_total)
  end
end
