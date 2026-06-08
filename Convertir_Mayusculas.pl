#!/usr/bin/perl

# Leer el archivo usuarios.txt
open(my $archivo_entrada, '<', 'usuarios.txt') or die "No se puede abrir usuarios.txt: $!";

# Abrir el archivo de salida
open(my $archivo_salida, '>', 'usuarios_mayusculas.txt') or die "No se puede crear usuarios_mayusculas.txt: $!";

# Leer línea por línea y convertir a mayúsculas
while (my $linea = <$archivo_entrada>) {
    chomp($linea);  # Eliminar salto de línea
    
    if ($linea ne "") {  # Solo procesar líneas no vacías
        my $mayuscula = uc($linea);  # Convertir a mayúsculas
        print $archivo_salida "$mayuscula\n";  # Escribir en el archivo de salida
    }
}

# Cerrar los archivos
close($archivo_entrada);
close($archivo_salida);

print "Archivo 'usuarios_mayusculas.txt' creado exitosamente.\n";