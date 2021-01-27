require 'pg'


class Bookmark
  # BOOKMARKS = []

  # begin
  #   bookmark_database = PG.connect :dbname => 'bookmark_manager'
  #   all_bookmarks = bookmark_database.exec("SELECT * FROM bookmarks;")
  #   all_bookmarks.each { |bookmark| BOOKMARKS << bookmark["url"] }
  # end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }

  end

end
