#! /usr/bin/perl

@files=`ls *.csv`;

foreach $f(@files)
  {
    chomp($f);
    system("head -1 $f >tmp");
    system("cat $f | grep -v Project >>tmp");
    system("cp tmp $f");
    system("rm tmp");
  }
