class Usuario
end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(nombre, numero_de_cuenta, saldo = 0)
        @nombre = nombre
        @numero_de_cuenta = numero_de_cuenta
        raise RangeError if @numero_de_cuenta.digits.count != 8
        @saldo = saldo
    end

    def transferir(monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end
end

#Testeando el método transferir

c1 = CuentaBancaria.new('Santander', 12345678, 5000)
c2 = CuentaBancaria.new('Estado', 87654321, 5000)

c1.transferir(5000, c2)

pp c1.saldo
pp c2.saldo

