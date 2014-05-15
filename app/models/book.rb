class Book < ActiveRecord::Base
  def has_stock?
    quantity.present? && quantity > 0
  end
end
