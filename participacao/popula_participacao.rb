# frozen_string_literal: true

require_relative  'participacao'

# classe que é responsável por criar, atualizar e excluir participacao
class PopulaParticipacao

  def inserir_participacao(posicao, sk_nome, camp_nome)
    p = Participacao.new
    p.posicao=posicao
    s = Skatista.find_by_nome(sk_nome)
    if s.nil?
      s = Skatista.new
      s.nome = sk_nome
    end
    s.save
    p.skatista = s
    c = Campeonato.find_by_nome(camp_nome)
    if c.nil?
      c = Campeonato.new
      c.nome = camp_nome
      c.save
    end
    p.campeonato = c
    p.save
  end

  def excluir_participacao(posicao)
    participacao = Participacao.find_by_posicao(posicao)
    if participacao.nil?
      puts "Participacao #{posicao} não encontrada"
    else
      puts "Excluindo participacao #{participacao.posicao}"
      participacao.destroy
    end
  end

  def update_participacao(posicao, nova_posicao)
    participacao = Participacao.find_by_posicao(posicao)
    if participacao.nil?
      puts "Participacao #{posicao} não encontrada"
    else
      puts "Atualizando participacao #{participacao.posicao}"
      participacao.update(posicao: nova_posicao)
    end
  end
end
