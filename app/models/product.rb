class Product < ApplicationRecord

  def sale_message
    if price.to_i < 340000 
      return "Low priced dragon. May be harder to train."
    else
      return "High priced dragon. Tends to be easier to train."
    end

    def tax
      price * 0.009
    end
  end
end