require './lib/database_connection'

ENV['ENVIRONMENT'] == 'test' ? DatabaseConnection.setup('bookmark_manager_test') : DatabaseConnection.setup('bookmark_manager')
