require_relative 'categoria'

# classe que é responsável por criar, atualizar e excluir categoria

class PolulaCategoria
  def insere_categoria(nome)
    c = Categoria.new
    c.nome = nome
    c.save
  end

  def exclui_categoria(nome)
    categoria = Categoria.find_by_nome(nome: nome)
    if categoria.nil?
      puts "Categoria #{nome} não encontrada"
    else
      puts "Excluindo categoria #{categoria.nome}"
      categoria.destroy
    end
  end

  def atualiza_categoria(nome, novo_nome)
    Categoria.where(nome: nome).update_all(nome: novo_nome)
  end
end