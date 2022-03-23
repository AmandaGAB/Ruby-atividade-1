#programa que lê o conteúdo de um arquivo texto e para cada linha lida do arquivo,
#cria uma instancia de AnalisadorLinha. 
require_relative './AnalisadorLinha'

    arquivo = File.new("texto.txt", "r")

    linhasArquivo = File.readlines("texto.txt")

    array = Array.new

    (linhasArquivo).each_with_index { |l, i| 

    array.push(AnalisadorLinha.new(i+=1, l)) 
    }

    array.each do |linha| 

    linha.analiseFrequencia
    
    print linha.to_str

    end
  


#Algumas referências:
#https://medium.com/collabcode/diferen%C3%A7a-entre-map-collect-select-e-each-no-ruby-4d8dc853711f
#https://cursos.alura.com.br/forum/topico-conceito-de-each_with_index-78144
