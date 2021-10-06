class CalculoMiojo
  def calcular_tempo_preparo(tempo_preparo, amp1, amp2)
    amp_menor, amp_maior = [amp1, amp2].minmax

    diferenca = amp_maior - amp_menor

    return puts 'Nao foi possivel calcular' if diferenca.zero?

    if diferenca == tempo_preparo
      puts "O tempo total foi de #{amp_maior} minutos"
    else
      amp_menor += amp_menor
      calcular_tempo_preparo(tempo_preparo, amp_menor, amp_maior)
    end
  end
end

# Exemplos de chamada
CalculoMiojo.new.calcular_tempo_preparo(3, 5, 10)
CalculoMiojo.new.calcular_tempo_preparo(3, 5, 7)
CalculoMiojo.new.calcular_tempo_preparo(14, 15, 22)
