class Distancia
  def calcular_distancia_entre_todos(*lista)

    # Colocar o numero do ponto junto com suas coordenadas
    lista.each_with_index do |_, index|
      lista[index] = [index + 1, lista[index]]
    end

    lista.each_with_index do |current_item, _|
      # removendo o ponto corrente da lista
      listaaux = lista - [current_item]

      # calculando o ponto corrente com cada item da lista
      listaaux.each_with_index do |second_item, _|
        calcular_distancia_entre_dois(current_item, second_item)
      end
    end

  end

  def calcular_distancia_entre_dois(params1, params2)
    ponto1, coord1 = params1
    x1, y1 = coord1
    ponto2, coord2 = params2
    x2, y2 = coord2

    distancia = Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
    puts "a distancia entre o ponto #{ponto1} e o ponto #{ponto2} é: #{distancia}"
  end
end

# Exeplos de chamada
point1 = [1.0, 7.0]
point2 = [5.0, 9.0]
# point3 = [-2.5, 0.4]
# point4 = [12.1, 7.3]

Distancia.new.calcular_distancia_entre_todos(point1, point2)
