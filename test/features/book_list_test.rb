require "test_helper"

class BookListTest < Capybara::Rails::TestCase
  test "adding a book" do 
    visit new_book_path
    fill_in "Title", with: "Microserfs"
    fill_in "Author", with: "Douglas Coupland"
    click_on "Create Book"

    save_and_open_page
    assert_content page, "Microserfs"
  end
end
