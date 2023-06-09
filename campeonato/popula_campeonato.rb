require_relative 'campeonato'

class PopulaCampeonato
  def insere_campeonato(nome, local)
    camp = Campeonato.new
    camp.nome = nome
    l = Local.new
    l.endereco = local
    l.save
    camp.local = l
    camp.save
  end

  def exclui_campeonato(nome)
    campeonato = Campeonato.find_by_nome(nome)
    if campeonato.nil?
      puts "Campeonato #{nome} não encontrado"
    else
      puts "Excluindo campeonato #{campeonato.nome}"
      campeonato.destroy
    end
  end

  def atualiza_campeonato_nome(nome, novo_nome)
    campeonato = Campeonato.find_by_nome(nome)
    if campeonato.nil?
      puts "Campeonato #{nome} não encontrado"
    else
      puts "Atualizando campeonato #{campeonato.nome}"
      campeonato.update(nome: novo_nome)
    end
  end

  def atualiza_campeonato_local(nome, novo_local)
    campeonato = Campeonato.find_by_nome(nome)

    if campeonato.nil?
      puts "Campeonato no #{local} não encontrado"
    else
      puts "Atualizando campeonato #{campeonato.nome}"
      campeonato.update(nome: novo_local)
    end
  end
end
