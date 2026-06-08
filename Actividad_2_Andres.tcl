#!/usr/bin/env tclsh

puts "\n"

puts "Ingrese su nombre:"
set nombre [gets stdin]

puts "Ingrese su edad:"
set edad [gets stdin]

puts "En cuantos anios desea saber su edad?"
set anos [gets stdin]

set edad_futura [expr {$edad + $anos}]

puts "\n"
puts "Informacion" 
puts "  Nombre:          $nombre"
puts "  Edad actual:     $edad anios"
puts "  Años a sumar:    $anos anios"
puts ""
puts "En $anos anios tendra: $edad_futura anios"
puts ""