$LOAD_PATH.push './'
require_relative  './categoria/categoria'
require_relative  './skatista/skatista'
class PopulaCategoriaSkatista
  def insere(categoria, skatista)
    ctg = Categoria.find_by_nome(categoria)
    if ctg.nil?
      ctg = Categoria.new
      ctg.nome = categoria
      ctg.save
    end

    skt = Skatista.all
    if skt.empty?
      puts 'Não há skatistas cadastrados'
    else
      skt.each do |skatista|
      skatista.categoria << ctg
      skatista.save
      end
    end


    skt = Skatista.find_by_nome(skatista)
    if skt.nil?
      skt = Skatista.new
      skt.nome = skatista
      skt.save
    end


    ctg = Categoria.all
    if ctg.empty?
      puts 'Não há categorias cadastradas'
    else
      ctg.each do |categoria|
      categoria.skatista << skt
      categoria.save
      end
    end

  end

  def remove(categoria, skatista)
    ctg = Categoria.find_by_nome(categoria)
    skt = Skatista.all
    skt.each do |skatista|
      skatista.categoria.delete(ctg)
      skatista.save
    end
    skt = Skatista.find_by_nome(skatista)
    ctg = Categoria.all
    ctg.each do |categoria|
      categoria.skatista.delete(skt)
      categoria.save
    end
  end

  def lista
    skt = Skatista.all
    if skt.empty?
      puts 'Não há skatistas cadastrados'
    end
    skt.each do |skatista|
      skatista.categoria.each do |categoria|
        puts categoria.nome
      end
    end

    ctg = Categoria.all
    if ctg.empty?
      puts 'Não há categorias cadastradas'
    end
    ctg.each do |categoria|
      categoria.skatista.each do |skatista|
        puts skatista.nome
      end
    end
  end
end