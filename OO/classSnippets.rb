module Extra
	def apresentacao(name)
		puts 'Meu nome é ' + name
	end
end

class Pessoa
	include Extra
	attr_reader :idade, :nome, :sexo
	@@count = 0
	
    def initialize(nome='Indefinido', sexo='I', idade=0)
        @idade = idade
        @nome = nome
        @sexo = sexo
		
		atualizaContador
	end
	
	def atualizaContador()
		@@count += 1
	end
	
	private :atualizaContador
	
	
	def setIdade=(value)
		@idade = value
	end
	
	def setNome=(value)
		@nome = value
	end
	
	def setSexo=(value)
		possibleValues = ['i', 'I', 'f', 'F', 'm', 'M']
		if possibleValues.include?(value)
			@sexo = value.upcase
		else
			@sexo = 'I'
		end
	end
    
    def to_s()
        "Pessoa [Nome: " + @nome + \
        ", Idade: " + @idade.to_s() + \
        ", Gênero: " + @sexo + "]"
    end
	
	def self.getContador()
		@@count
	end
end

module NivelAlunos
	INDEFINIDO = 0
    FUNDAMENTAL = 1
    MEDIO = 2
    GRADUACAO = 3
    MESTRADO = 4
    DOUTORADO = 5
end

class Aluno < Pessoa
	attr_reader :matricula
	attr_writer :matricula
	attr_accessor :nivel
	
    def initialize(nome='Indefinido', sexo='I', idade=0, matricula='Indefinida', nivel=NivelAlunos::INDEFINIDO)
        super(nome, sexo, idade)
        @matricula = matricula
        @nivel = nivel
	end
        
    def to_s()
        "Aluno [Nome: " + @nome + \
        ", Idade: " + @idade.to_s() + \
        ", Gênero: " + @sexo + \
        ", Matrícula: " + @matricula + \
        ", Nível: " + @nivel.to_s + "]"
    end    
end

pessoa = Pessoa.new

pessoa.setNome = 'Paulo'
pessoa.setIdade = 24

puts 'Valor inválido'

pessoa.setSexo = 'b'

puts pessoa.to_s

puts 'Valor válido'

pessoa.setSexo = 'M'

puts pessoa.to_s

pessoa.apresentacao(pessoa.nome)

aluno = Aluno.new('Laurien', 'F', 24, '00231058', NivelAlunos::GRADUACAO)

puts aluno.to_s

puts 'Pessoas inicializadas: ' + Pessoa.getContador.to_s

class Dog
	attr_accessor :raça
	def initialize(raça='abc')
		@raça = raça
	end
end

dog = Dog.new
puts dog.raça
