require 'active_record'

# Conectando com o banco de dados
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'liga_skate.sqlite3'
)

# Definindo as tabelas e validacaoes
class Local < ActiveRecord::Base
  self.table_name = 'locais'
  validates :endereco, presence: true
  has_one :campeonato, dependent: :destroy

end
