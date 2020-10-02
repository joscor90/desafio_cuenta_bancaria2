class Usuario
    attr_accessor :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo(user)
        saldo_total = 0
        user.cuentas.each do |i|
            saldo_total += i.saldo
        end
        return saldo_total
    end
end

class CuentaBancaria
    attr_accessor :saldo, :numero_de_cuenta
    def initialize(nombre, numero_de_cuenta, saldo = 0)
        @nombre = nombre
        @numero_de_cuenta = numero_de_cuenta
        raise RangeError if @numero_de_cuenta.digits.count != 8
        @saldo = saldo
    end

    def transferir(monto, otra_cuenta)
        self.saldo -= monto
        otra_cuenta.saldo += monto
    end
end

#Para testear métodos 
c1 = CuentaBancaria.new('Santander', 12345678, 5000)
c2 = CuentaBancaria.new('Estado', 87654321, 5000)
c3 = CuentaBancaria.new('VTR', 11111111, 5000)
c4 = CuentaBancaria.new('BCI', 22222222, 5000)

#Testeando método transferir
c1.transferir(500, c2)

#Primer output test
pp c1.saldo #=> 4500
pp c2.saldo #=> 5500

#Testeando método constructor de cuentas
user1 = Usuario.new('Pancho', [c3, c4])

#Output test
pp user1

#Testeando el método saldo de la clase Usuario
total = user1.saldo(user1)

#Segundo output test
pp total