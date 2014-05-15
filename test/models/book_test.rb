require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "books with positive quanity have stock" do 
    book = Book.new(quantity: 1)
    assert book.has_stock?, "Book with quantity 1 should have stock"
  end
  test "books with 0 quantity do not have stock" do
    book = Book.new(quantity: 0)
    assert_not book.has_stock?
  end
  test "books with negative quantity do not have stock" do
    book = Book.new(quantity: -1)
    assert_not book.has_stock?
  end
  test "books with nil quantity do not have stock" do
    book = Book.new(quantity: nil)
    assert_not book.has_stock?
  end
end
