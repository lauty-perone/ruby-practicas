# Ejercicio 19
# Implementá las excepciones EsUnStringVacio y NoEsUnaPalabra y la clase
# Palabra con vocales, consonantes, longitud, es_panvocalica?,
# es_palindroma?, gritando y en_jaquer.

class NoEsUnaPalabra < StandardError; end
class EsUnStringVacio < StandardError; end

class Palabra
  attr_reader :palabra

  VOCALES = 'aeiou'
  JAQUER_MAP = {
    'a' => '4',
    'e' => '3',
    'i' => '1',
    'o' => '0',
    'u' => '2'
  }.freeze

  def initialize(texto)
    if texto.strip.empty?
      raise EsUnStringVacio, "Es un string vacío"
    elsif texto =~ /\s/
      raise NoEsUnaPalabra, "#{texto} no es una palabra"
    end

    @palabra = texto
  end

  def vocales
    palabra.downcase.chars.select { |c| VOCALES.include?(c) }.uniq
  end

  def consonantes
    palabra.downcase.chars.select { |c| c.match?(/[a-z]/) && !VOCALES.include?(c) }.uniq
  end

  def longitud
    palabra.length
  end

  def es_panvocalica?
    v = vocales
    VOCALES.chars.all? { |vocal| v.include?(vocal) }
  end

  def es_palindroma?
    minuscula = palabra.downcase
    longitud >= 3 && minuscula == minuscula.reverse
  end

  def gritando
    palabra.upcase
  end

  def en_jaquer
    palabra.gsub(/[aeiou]/i) { |vocal| JAQUER_MAP[vocal.downcase] }
  end
end

# --- Pruebas de excepciones ---
["", "   "].each do |vacio|
  begin
    Palabra.new(vacio)
  rescue EsUnStringVacio => e
    puts "String vacío (#{vacio.inspect}) -> #{e.class}: #{e.message}"
  end
end

["hola mundo", "dos palabras"].each do |frase|
  begin
    Palabra.new(frase)
  rescue NoEsUnaPalabra => e
    puts "No es palabra (#{frase.inspect}) -> #{e.class}: #{e.message}"
  end
end

puts "-" * 40

# --- Pruebas de métodos de instancia ---
["murcielago", "Neuquen", "ala", "Ruby"].each do |texto|
  p = Palabra.new(texto)
  puts "Palabra: #{p.palabra.inspect}"
  puts "  vocales:        #{p.vocales.inspect}"
  puts "  consonantes:    #{p.consonantes.inspect}"
  puts "  longitud:       #{p.longitud}"
  puts "  es_panvocalica?: #{p.es_panvocalica?}"
  puts "  es_palindroma?:  #{p.es_palindroma?}"
  puts "  gritando:       #{p.gritando}"
  puts "  en_jaquer:      #{p.en_jaquer}"
end