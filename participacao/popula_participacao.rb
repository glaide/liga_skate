# frozen_string_literal: true

require_relative  'participacao'

# classe que é responsável por criar, atualizar e excluir participacao
class PopulaParticipacao
  # @param [string] posicao
  def inserir_participacao(posicao)
    participacao = Participacao.new
    participacao.posicao << posicao
    participacao.save
  end

  def excluir_participacao(posicao)
    participacao = Participacao.find_by(posicao)
    if participacao.nil?
      puts "Participacao #{posicao} não encontrada"
    else
      puts "Excluindo participacao #{participacao.posicao}"
      participacao.destroy
    end
  end

  def update_participacao(posicao, nova_posicao)
    participacao = Participacao.find_by(posicao)
    if participacao.nil?
      puts "Participacao #{posicao} não encontrada"
    else
      puts "Atualizando participacao #{participacao.posicao}"
      participacao.update(posicao: nova_posicao)
    end
  end
end
