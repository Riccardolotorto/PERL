#!/usr/bin/perl
use strict;
use warnings;
use DBI;

eval {
    require DBD::ODBC;
    print "DBD::ODBC è installato correttamente.\n";
    1;
} or do {
    my $error = $@ || "Errore sconosciuto";
    die "Errore durante il caricamento di DBD::ODBC: $error\n";
};
