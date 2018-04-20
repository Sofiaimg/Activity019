#Ejercicio 3: Herencia
#Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método
#engine_start enciende el vehículo.
#Se pide:

# OK Crear una clase Car que herede de Vehicle

# OK El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
# contador de instancias de Car.

# OK Crear un método de clase en Car que devuelva la cantidad de instancias.

# OK El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.

#OK Instanciar 10 Cars.

#Consultar la cantidad de instancias generadas de Car mediante el método de clase
#creado.

class Vehicle
 def initialize(model, year)
 @model = model
 @year = year
 @start = false
 end
 def engine_start
 @start = true
 end
end

class Car < Vehicle
attr_accessor :count
  @@count = 0
  def initialize()
    @@count += 1
  end
  def self.instancia
    @@count
  end
  def engine_start
    super
    'El motor se ha encendido!'
  end
end
