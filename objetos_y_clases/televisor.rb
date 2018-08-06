class Televisor
  attr_accessor :modelo, :tamano
  def initialize(params)
    @modelo = params[:modelo]
    @tamano = params[:tamano]
    @volumen = 10
    @estado = false
    @canal = 1
  end

  def power
    if @estado == true
      @estado = false
    else 
      @estado = true
    end
  end

  def presentacion
    puts "Modelo: #{@modelo} Tamaño: #{@tamano} Volumen #{@volumen} Prendido: #{@estado} Canal actual #{@canal}"
  end

  def cambia_canal
    @canal += 1
    if @canal > 7
      @canal = 1
    end
  end

  def cambia_volumen
    @volumen += 1
    if @volumen > 50
      puts 'El volumen esta al maximo'
      @volumen = 49
    end
  end
end

lcd = Televisor.new(modelo:'LG', tamano: 32)

lcd.presentacion
lcd.power
lcd.cambia_canal
lcd.presentacion
lcd.cambia_canal
lcd.cambia_volumen
lcd.presentacion