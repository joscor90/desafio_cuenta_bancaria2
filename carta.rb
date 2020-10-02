class Carta
    attr_accessor :numero, :pinta
    def initialize(numero=Random.rand(1...13) , pinta=['C', 'D', 'T', 'E'].sample)
        @numero = numero
        @pinta = pinta
    end
end