#!/usr/bin/tclsh

# Obtener el nombre del equipo
set equipo [string trim [exec hostname]]

# Obtener la fecha actual en formato YYYY-MM-DD
set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

# Obtener el usuario actual
# En Linux/Unix usamos USER, en Windows usamos USERNAME
if {[info exists env(USER)]} {
    set usuario $env(USER)
} elseif {[info exists env(USERNAME)]} {
    set usuario $env(USERNAME)
} else {
    set usuario [string trim [exec whoami]]
}

# Mostrar el reporte
puts "REPORTE DEL SISTEMA"
puts ""
puts "Equipo: $equipo"
puts "Usuario: $usuario"
puts "Fecha: $fecha"
puts ""

# Pausa para ver la salida en Windows
puts "Presiona Enter para salir..."
flush stdout
gets stdin