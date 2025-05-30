require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'

db.execute "insert into Cars.sqlite (Cars,Prise) values ('ZaZ', 500)"
db.execute "select * from Cars.sqlite" do |car|
	puts car
	puts '===='

db.close