class Carta
    attr_accessor :numero, :pinta
    def initialize
        @numero = Random.rand(1...13)
        @pinta = ['C', 'D', 'T', 'E']
    end
end