#!/usr/bin/perl
use strict;
use warnings;
use DBI;

# Configurazione database
my $dsn = 'DBI:mysql:database=zhao.filippo;host=192.168.40.16';
my $username = 'zhao.filippo'; # Cambia con il tuo username
my $password = 'xxx123##'; # Cambia con la tua password

# Connessione al database
my $dbh = DBI->connect($dsn, $username, $password, { RaiseError => 1 })
    or die $DBI::errstr;

print "Connessione avvenuta con successo!\n";

# Esempio di query
my $sth = $dbh->prepare("SELECT * FROM Lotorto.Members");
$sth->execute();


while (my @row = $sth->fetchrow_array) {
    print "ID: $row[0], Username: $row[1], Password: $row[2]\n";
}

# Chiudere la connessione
$sth->finish();
$dbh->disconnect();
