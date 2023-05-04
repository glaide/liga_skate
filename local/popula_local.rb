require_relative 'local'

# classe que é responsável por criar, atualizar e excluir local
class PopulaLocal
  def insere_local(nome, camp, catg)
    l = Local.new
    l.endereco = nome
    #   has_one :campeonato
    #   has_one :categoria
    c = Campeonato.find_by_nome(camp)
    if c.nil?
      c = Campeonato.new
      c.nome = camp
      c.local=l
      c.save
    else
      c.local = l
      c.save
      end

    ctg = Categoria.find_by_nome(catg)
    if ctg.nil?
      ctg = Categoria.new
      ctg.nome = catg
      ctg.local = l
      ctg.save
    else
      ctg = l
      ctg.save
    end

    l.save
  end

  def exclui_local(endereco)
    local = Local.find_by_endereco(endereco)
    if local.nil?
      puts "Local #{endereco} não encontrado"
    else
      puts "Excluindo local #{local.endereco}"
      local.destroy
    end
  end

  def atualiza_local(endereco, novo_endereco)
  local = Local.find_by_endereco(endereco)
  if local.nil?
      puts "Local #{endereco} não encontrado"
    else
      puts "Atualizando local #{local.endereco}"
      local.update(endereco: novo_endereco)
    end

  end
end
