require_relative 'local'

# classe que é responsável por criar, atualizar e excluir local
class PopulaLocal
  def insere_local(nome)
    Local.create(nome: nome).save
  end

  def exclui_local(nome)
    local = Local.find_by(nome: nome)
    if local.nil?
      puts "Local #{nome} não encontrado"
    else
      puts "Excluindo local #{local.nome}"
      local.destroy
    end
  end

  def atualiza_local(nome, novo_nome)
    local = Local.find_by(nome:)
    if local.nil?
      puts "Local #{nome} não encontrado"
    else
      puts "Atualizando local #{local.nome}"
      local.update(nome: novo_nome)
    end

  end
end