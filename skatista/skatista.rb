# frozen_string_literal: true

require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: 'liga_skate.sqlite3'

# classe valida skatista
class Skatista < ActiveRecord::Base
  self.table_name = 'skatistas'
  validates :nome, presence: true
end
