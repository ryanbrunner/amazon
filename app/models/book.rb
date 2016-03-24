class Book < ActiveRecord::Base
  has_attached_file :cover, 
  		styles: { medium: "300x300>", 
  				  thumb: "100x100>",
  				  small: "200x200>" }


  validates_attachment_content_type :cover, 
  	:content_type => /\Aimage\/.*\Z/

  def has_stock?
    quantity.present? && quantity > 0
  end
end
