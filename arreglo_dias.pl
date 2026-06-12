#!/usr/bin/perl

# Crear el arreglo con los días de la semana
my @dias = ("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");

# Mostrar todos los días
print "Días de la semana:\n";
foreach my $dia (@dias) {
    print "  - $dia\n";
}

# Contar cuántos elementos tiene el arreglo
my $cantidad = scalar @dias;
print "\nTotal de elementos en el arreglo: $cantidad\n";