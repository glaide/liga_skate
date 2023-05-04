# frozen_string_literal: true

$LOAD_PATH.push './'

require_relative  'skatista'

# classe que lista com skatista
class PopulaSkatista
  def insere(nome, categoria)
    skt = Skatista.new
    skt.nome = nome
    ctg = Categoria.new
    ctg.nome = nome
    ctg.save
    skt.categoria = categoria
    skt.save
  end

  def exclui(nome)
    skate = Skatista.find_by_nome(nome)
    if skate.nil?
      puts "Skatista #{nome} não encontrado"
    else
      puts "Excluindo skatista #{skate.nome}"
      skate.destroy
    end
  end

  def update(nome, novo_nome)
    skate = Skatista.find_by_nome(nome)
    if skate.nil?
      puts "Skatista #{nome} não encontrado"
    else
      puts "Atualizando skatista #{skate.nome}"
      skate.update(nome: novo_nome)
    end
  end
end
