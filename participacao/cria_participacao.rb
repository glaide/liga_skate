require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'liga_skate.sqlite3'

ActiveRecord::Base.connection.create_table :participacoes do |p|
  p.integer :posicao
  p.references :campeonato
  p.references :skatista
  belongs_to :campeonato

end
