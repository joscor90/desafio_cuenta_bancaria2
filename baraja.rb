require_relative "carta"

class Baraja
    attr_accessor :cartas, :carta
    def initialize
        @cartas = []
        numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        pinta = ['C', 'D', 'T', 'E']
        while self.cartas.length < 52
            numero.each do |n|
                pinta.each do |p|
                    self.cartas.push(Carta.new(n,p))
                end
            end
        end
    end 

    def barajar
        self.cartas.shuffle!
    end

    def sacar
        primera_carta = self.cartas.pop
    end

    def repartir_mano
        mano = []
        5.times do
            mano.push(self.cartas.pop)
        end
        return mano
    end
end

#
b1 = Baraja.new

pp b1