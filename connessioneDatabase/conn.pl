#!/usr/bin/perl
use strict;
use warnings;
use DBI;

# Configurazione database
my $dsn = 'dbi:ODBC:Driver={SQL Server};Server=192.168.40.16;Database=zhao.filippo;';
my $username = 'zhao.filippo'; # Cambia con il tuo username
my $password = 'xxx123##'; # Cambia con la tua password

# Connessione al database
my $dbh = DBI->connect($dsn, $username, $password, { RaiseError => 1 })
    or die $DBI::errstr;

print "Connessione avvenuta con successo!\n";

# Esempio di query
my $sth = $dbh->prepare("SELECT * FROM Lotorto.Members");
$sth->execute();

# Chiudere la connessione
$sth->finish();
$dbh->disconnect();
