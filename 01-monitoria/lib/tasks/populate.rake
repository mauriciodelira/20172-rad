namespace :populate do

  desc "Popula valores teste para as tabelas 4 Disciplinas, 4 Semestres"
  task dadosReais: :environment do
  
    puts "Inserindo 4 Semestres"
    4.times do |i|
      Semester.create!(ano: (2014+i), periodo: (i%2+1))
      print "."
    end
    print "[ fim semestres ]"
  
    puts "Inserindo 4 Disciplinas"
    Discipline.create!(descricao: "Desenvolvimento RAD", abreviacao: "RAD")
    Discipline.create!(descricao: "Programação Web 2", abreviacao: "PWEB2")
    Discipline.create!(descricao: "Gerenciamento de Projetos de Software", abreviacao: "GPS")
    Discipline.create!(descricao: "Estrutura de Dados", abreviacao: "ED")
    Discipline.create!(descricao: "Programação para Dispositivos Móveis", abreviacao: "PDM")
    puts "[ fim disciplinas ]"
  end

  desc "Popula a tabela Alunos"
  task students: :environment do
    print "Inserindo Alunos..."
    100.times do |i|
      Student.create!(nome: Faker::Name.name, matricula: Faker::Number.digit.to_s)
    end
    print "-- Fim Alunos --"
  end

  desc "Popula a tabela Disciplinas"
  task disciplines: :environment do
    print "Inserindo Disciplinas..."
    50.times do |i|
      Discipline.create!(descricao: Faker::Book.title, abreviacao: "DISC #{Faker::Number.digit.to_s}")
    end
    print " -- Fim Disciplinas -- "
  end

  desc "Popula a tabela Inscrições"
  task subscriptions: :environment do
    print "Inserindo Inscrições"
    100.times do |i|
      Subscription.create!(
        nota: 5,
        cre: 7,
        discipline: Discipline.all.sample,
        semester: Semester.all.sample,
        student: Student.all.sample
      )
    end
    print " -- Fim Inscrições -- "
  end




end
