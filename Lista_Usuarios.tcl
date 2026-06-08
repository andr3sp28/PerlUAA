#!/usr/bin/tclsh

if {![file exists "usuarios.txt"]} {
    puts "Error: No se encuentra usuarios.txt en la carpeta actual"
    puts "Carpeta actual: [pwd]"
    exit 1
}

set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo

set usuarios [split [string trim $contenido] "\n"]
set usuarios [lsearch -all -inline $usuarios "*"]

set total [llength $usuarios]

puts "LISTA DE USUARIOS"
puts ""

set contador 1
foreach usuario $usuarios {
    puts "$contador. $usuario"
    incr contador
}

puts ""
puts "Total: $total usuarios"
puts ""

puts "Presiona Enter para salir..."
flush stdout
gets stdin