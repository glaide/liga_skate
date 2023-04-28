require_relative 'campeonato'

class PopulaCampeonato
  def insere_campeonato(nome, local)
    camp = Campeonato.new(nome:, local:)
    camp.save
  end

  def exclui_campeonato(nome)
    campeonato = Campeonato.find_by(nome: nome)
    if campeonato.nil?
      puts "Campeonato #{nome} não encontrado"
    else
      puts "Excluindo campeonato #{campeonato.nome}"
      campeonato.destroy
    end
  end

  def atualiza_campeonato_nome(nome, novo_nome)
    campeonato = Campeonato.find_by(nome: nome)
    if campeonato.nil?
      puts "Campeonato #{nome} não encontrado"
    else
      puts "Atualizando campeonato #{campeonato.nome}"
      campeonato.update(nome: novo_nome)
    end
  end

  def atualiza_campeonato_local(local, novo_local)
    campeonato = Campeonato.find_by(local:)
    if campeonato.nil?
      puts "Campeonato no #{local} não encontrado"
    else
      puts "Atualizando campeonato #{campeonato.nome}"
      campeonato.update(local: novo_local)
    end
  end
end
