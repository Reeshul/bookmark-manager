feature ' adding bookmark' do
  scenario ' whilst catching some waves on the world wide web with my buds' do
    visit('/bookmarks/add')
    fill_in("url", with: 'http://www.testbookmark.com')
    fill_in("title", with: 'Test Title')
    click_button('Submit')
    expect(page).to have_link("Test Title", href: "http://www.testbookmark.com")
  end
  scenario 'the bookmark URL must be a valid URL' do
    visit("/bookmarks/add")
    fill_in("url", with: "this is not a real url!")
    click_button("Submit")

    expect(page).not_to have_content("this is not a real url!")
    expect(page).to have_content("You must submit a valid URL.")

  end
end
