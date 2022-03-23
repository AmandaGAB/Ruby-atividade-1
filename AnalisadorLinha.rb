class AnalisadorLinha #vai armazenar em seus atributos de instância o número de linhas, conteúdo e as palavras com mais frequências nessa linha
  
    attr_accessor :numero, :conteudo, :frequencia #attr_accessor para acessar e modificar dados
  
    def initialize(numero, conteudo) #construtor: o número e o conteúdo da linha
      @numero = numero
      @conteudo = conteudo
    end
  
    def analiseFrequencia #método para gerar a analise dessa frequencia

        armazena = @conteudo.split

            @frequencia = Hash.new(0)

        armazena.each do |palavra|

            @frequencia[palavra] += 1
    end
  
      def to_str 
        frequencia.each do |palavra, frequencia|
            return "\nNa linha #{numero} a palavra" + "=> #{palavra} <=" + "aparece #{frequencia} vez(es)" 
      end
    end
end
  
  end

#Algumas referências:
#https://medium.com/collabcode/diferen%C3%A7a-entre-map-collect-select-e-each-no-ruby-4d8dc853711f
#https://cursos.alura.com.br/forum/topico-conceito-de-each_with_index-78144