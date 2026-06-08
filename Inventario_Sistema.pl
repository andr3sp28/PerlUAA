#!/usr/bin/perl

use strict;
use warnings;

# Obtener la información del sistema
my $hostname = `hostname`;
chomp($hostname);

my $kernel = `uname -r`;
chomp($kernel);

# Obtener memoria disponible (en Linux)
my $memoria = `free -h | grep Mem`;
chomp($memoria);

# Obtener espacio libre en disco de la partición raíz
my $disco = `df -h / | tail -1`;
chomp($disco);

# Abrir el archivo para escribir
open(my $archivo, '>', 'reporte.txt') or die "No se puede crear reporte.txt: $!";

# Escribir el reporte
print $archivo "REPORTE DEL SISTEMA\n";
print $archivo "\n";
print $archivo "Hostname: $hostname\n";
print $archivo "Kernel: $kernel\n";
print $archivo "Memoria disponible:\n";
print $archivo "  $memoria\n";
print $archivo "\n";
print $archivo "Espacio en disco (partición raíz):\n";
print $archivo "  $disco\n";
print $archivo "\n";
print $archivo "Reporte generado: " . scalar(localtime()) . "\n";

close($archivo);

# Mostrar en pantalla también
print "REPORTE DEL SISTEMA\n";
print "\n";
print "Hostname: $hostname\n";
print "Kernel: $kernel\n";
print "Memoria disponible:\n";
print "  $memoria\n";
print "\n";
print "Espacio en disco (partición raíz):\n";
print "  $disco\n";
print "\n";
print "Reporte generado: " . scalar(localtime()) . "\n";
print "\nArchivo 'reporte.txt' creado exitosamente.\n";