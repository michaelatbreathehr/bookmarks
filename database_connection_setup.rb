require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
    DatabaseConnection.setup('bookmarks_manager_test')
else
    DatabaseConnection.setup('bookmark_manager')
end