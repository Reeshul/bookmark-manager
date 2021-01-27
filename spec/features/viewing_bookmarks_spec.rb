require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do


    # Add the test data
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Gooooooogle')

    visit('/bookmarks')

    expect(page).to have_link("Makers Academy", href: "http://www.makersacademy.com")
    expect(page).to have_link("Destroy All Software", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Gooooooogle", href: "http://www.google.com")
  end
end
