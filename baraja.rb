require_relative "carta"

class Baraja
    attr_accessor :cartas
    def initialize
        @cartas = []
        52.times do
            carta = Carta.new
            @cartas.each do |ele|
                if carta.numero != ele.numero && carta.pinta != ele.pinta
                    @cartas.push(@carta)
                end
            end
        end
    end 
end

mazo = Baraja.new

pp mazo