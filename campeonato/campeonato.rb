require 'active_record'

# Conectando com o banco de dados
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'liga_skate.sqlite3'
)

class Campeonato < ActiveRecord::Base
  self.table_name = "campeonatos"
  validates :nome, presence: true
  belongs_to :local
  validates :local, presence: true
  has_many :participacao
end
