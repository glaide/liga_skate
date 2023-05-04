require 'active_record'

# Conectando com o banco de dados
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'liga_skate.sqlite3'
)

# Definindo as tabelas e validacaoes
class Participacao < ActiveRecord::Base
  self.table_name = 'participacoes'
  validates :posicao, presence: true
  belongs_to :campeonato
  belongs_to :skatista

end
