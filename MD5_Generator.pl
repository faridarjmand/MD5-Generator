#!/usr/bin/perl -w

use Digest::MD5 qw(md5_hex);
$ok = 1;
while ($ok == 1)
{
print "\n\nEnter your string : ";
$md5 = <STDIN>;
chomp($md5);
$hash = md5_hex($md5);
print "\nYour MD5 : [ $md5 ] -- Its MD5 : [ $hash ] \n";
open(DAT,">>MD5.txt") || die("Cannot create Hash File");  
print DAT "Your MD5: $hash\n\n";
sleep(1);
close(DAT);
die "\nDone...\n";
}
