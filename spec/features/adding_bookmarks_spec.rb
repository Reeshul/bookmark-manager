feature ' adding bookmark' do
  scenario ' whilst catching some waves on the world wide web with my buds' do
    visit('/bookmarks/add')
    fill_in("url", with: 'http://www.testbookmark.com')
    fill_in("title", with: 'Test Title')
    click_button('Submit')
    expect(page).to have_link("Test Title", href: "http://www.testbookmark.com")
  end
end
