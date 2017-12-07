load("pessoa_fisica.rb")

class Cadastro
  attr_accessor :db

  def initialize()
    puts 'inicializando o banco...'
    @db = Array.new
  end

  def insert(pessoa)
    db.push(pessoa)
  end

  def listar()
    count = self.db.count { |item| item.is_a? PessoaFisica}
    {"fisicas" => count, "simples" => self.db.size - count}
  end

  def size()
    db.length
  end
end