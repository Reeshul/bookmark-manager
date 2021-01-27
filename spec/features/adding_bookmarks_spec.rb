

feature ' adding bookmark' do
  scenario ' whilst catching some waves on the world wide web with my buds' do
    visit('/bookmarks/add')
    fill_in("url", with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'

  end
end
