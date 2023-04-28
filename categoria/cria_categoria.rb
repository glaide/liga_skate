require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'liga_skate.sqlite3'

ActiveRecord::Base.connection.create_table :categorias do |p|
  p.string :nome
end
