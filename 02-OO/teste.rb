load('pessoa.rb')
load('pessoa_fisica.rb')
load('cadastro.rb')

banco = Cadastro.new
pessoaTemp = nil

puts '== Cadastro de Pessoas =='
puts ' - - - - - - - - - - - -'
puts ''

while banco.size < 3
  puts '-- Nova pessoa --'
  puts ''
  print 'Cadastrar uma pessoa simples? s/n: '
  option = gets.chomp

  if option == 's'
    print 'Nome: '
    nome = gets.chomp

    print 'Idade: '
    idade = gets.to_i

    pessoaTemp = Pessoa.new(nome, idade)

  else #não quer simples, pode ser física.
    print 'Cadastrar uma pessoa física? s/n: '

    option = gets.chomp

    if option == 's'
      print 'Nome: '
      nome = gets.chomp

      print 'Idade: '
      idade = gets.to_i

      print 'CPF: '
      cpf = gets.chomp

      pessoaTemp = PessoaFisica.new(nome, idade, cpf)
    end
  end

  if pessoaTemp != nil
    banco.insert(pessoaTemp)
  end

  pessoaTemp = nil

end

pessoas = banco.listar
puts "Pessoas físicas: #{pessoas["fisicas"]}"
puts "Pessoas simples: #{pessoas["simples"]}"

=begin

p1 = Pessoa.new("Pessoa 1", 39)
p2 = Pessoa.new("Pessoa 2", 21)
pf1 = PessoaFisica.new("PessoaFisica 1",20, "09986234234")
pf2 = PessoaFisica.new("PessoaFisica 2",17, "45438384893")

p1.imprimir
p2.imprimir
pf1.imprimir
pf2.imprimir

f = 'y'
while f != 'n'
  print 'Nome: '
  nome = gets.chomp
  print 'Idade: '
  idade = gets.to_i
  print 'CPF: '
  cpf = gets.chomp

  if cpf != ''
    pessoa = PessoaFisica.new(nome, idade, cpf)
  else
    pessoa = Pessoa.new(nome, idade)
  end

  if pessoa.is_a? Pessoa
    puts 'É uma pessoa simples'
  end

  if pessoa.is_a? PessoaFisica
    puts 'É uma pessoa física'
  end

  pessoa.imprimir

  puts 'Nova pessoa? s/n'
  f = gets.chomp

end

=end