require 'active_record'

# Conectando com o banco de dados
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'liga_skate.sqlite3'
)

# Definindo as tabelas e validacaoes
class Categoria < ActiveRecord::Base
  self.table_name = 'categorias'
  validates :nome, presence: true
  belongs_to :local

end
