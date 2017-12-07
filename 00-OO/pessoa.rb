class Pessoa
  # attr_accessor :<attr> --> faz com que o atributo colado ao : já tenha o get e set
  attr_accessor :nome
  attr_accessor :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def imprimir
    puts ("nome: #{self.nome} - idade: #{self.idade}")
  end

=begin
  # get
  def nome
    @nome
  end

  def idade
    @idade
  end

  #set
  def nome= (nome)
    @nome = nome
  end

  def idade= (idade)
    @idade = idade
  end
=end

end

# # testes
# p1 = Pessoa.new("primeira", 1)
# p2 = Pessoa.new("segunda", 2)
#
# # puts("#{p1.nome}, tem #{p1.idade}")
# # puts("#{p2.nome} tem #{p2.idade}")
#
# p1.imprimir
# p1.nome = "p1 alterado"
# p1.imprimir
#
# p2.imprimir

