#
# Ork Name generator
# Version 1.0
#

#!/usr/bin/perl

my $loop;
my $roll;
my $pre;
my $suf;
my $pre1;
my $suf1;
my @prefix1=(
aork,
arg,
bad,
Badsog,
bag,
big,
blunt,
bog,
bug,
daka,
dnot,
dreg,
dreger,
duff,
dur,
fang,
fug,
gob,
gob,
gob,
gobfug,
gog,
gog,
gor,
gorth,
goruz,
grim,
grim,
grims,
gro,
grod,
grok,
grot,
grub,
gul,
gut,
gut,
kop,
kop,
lagard,
lug,
mag,
mek,
meker,
mekuz,
mor,
morty,
mug,
mugs,
naff,
naga,
nak,
nar,
nararg,
naz,
nazuz,
nob,
og,
ork,
rat,
reg,
rot,
rub,
runt,
shak,
skab,
skar,
skull,
skum,
slag,
slag,
snag,
snaga,
snarp,
snik,
snik,
snot,
sog,
stuf,
teef,
teef,
thug,
tork,
turty,
ug,
ug,
ugork,
urty,
uz,
uz,
uzgrub,
uzstuf,
waa,
waz,
wort,
wort,
wort,
zod,
zog
);

my @suffix1=(
zog,
zod,
wort,
wort,
wort,
waz,
waa,
uzstuf,
uzgrub,
uz,
uz,
urty,
ugork,
ug,
ug,
turty,
tork,
thug,
teef,
teef,
stuf,
sog,
snot,
snik,
snik,
snarp,
snaga,
snag,
slag,
slag,
skum,
skull,
skar,
skab,
shak,
runt,
rub,
rot,
reg,
rat,
ork,
og,
nob,
nazuz,
naz,
nararg,
nar,
nak,
naga,
naff,
mugs,
mug,
morty,
mor,
mekuz,
meker,
mek,
mag,
lug,
lagard,
kop,
kop,
gut,
gut,
gul,
grub,
grot,
grok,
grod,
gro,
grims,
grim,
grim,
goruz,
gorth,
gor,
gog,
gog,
gobfug,
gob,
gob,
gob,
fug,
fang,
dur,
duff,
dreger,
dreg,
dnot,
daka,
bug,
bog,
blunt,
big,
bag,
Badsog,
bad,
arg,
aork
);

my @suffix2=(
aork,
arg,
bad,
Badsog,
bag,
big,
blunt,
bog,
bug,
daka,
dnot,
dreg,
dreger,
duff,
dur,
fang,
fug,
gob,
gob,
gob,
gobfug,
gog,
gog,
gor,
gorth,
goruz,
grim,
grim,
grims,
gro,
grod,
grok,
grot,
grub,
gul,
gut,
gut,
kop,
kop,
lagard,
lug,
mag,
mek,
meker,
mekuz,
mor,
morty,
mug,
mugs,
naff,
naga,
nak,
nar,
nararg,
naz,
nazuz,
nob,
og,
ork,
rat,
reg,
rot,
rub,
runt,
shak,
skab,
skar,
skull,
skum,
slag,
slag,
snag,
snaga,
snarp,
snik,
snik,
snot,
sog,
stuf,
teef,
teef,
thug,
tork,
turty,
ug,
ug,
ugork,
urty,
uz,
uz,
uzgrub,
uzstuf,
waa,
waz,
wort,
wort,
wort,
zod,
zog
);

my @prefix2=(
zog,
zod,
wort,
wort,
wort,
waz,
waa,
uzstuf,
uzgrub,
uz,
uz,
urty,
ugork,
ug,
ug,
turty,
tork,
thug,
teef,
teef,
stuf,
sog,
snot,
snik,
snik,
snarp,
snaga,
snag,
slag,
slag,
skum,
skull,
skar,
skab,
shak,
runt,
rub,
rot,
reg,
rat,
ork,
og,
nob,
nazuz,
naz,
nararg,
nar,
nak,
naga,
naff,
mugs,
mug,
morty,
mor,
mekuz,
meker,
mek,
mag,
lug,
lagard,
kop,
kop,
gut,
gut,
gul,
grub,
grot,
grok,
grod,
gro,
grims,
grim,
grim,
goruz,
gorth,
gor,
gog,
gog,
gobfug,
gob,
gob,
gob,
fug,
fang,
dur,
duff,
dreger,
dreg,
dnot,
daka,
bug,
bog,
blunt,
big,
bag,
Badsog,
bad,
arg,
aork
);



main();

sub main{
  srand(time() ^ ($$ + ($$ <<15)) );
  $loop = $ARGV[0];
  chomp $loop;
  #$loop++;
  #print "$loop\n";
  for($tmp=0; $tmp < $loop;$tmp++ ){
  
  names();
  $name1="$pre$suf";
  $pre="";
  $suf="";
  names();
  $name2="$pre$suf";
    
  #print "\n";
  print "$name1 $name2\n";
  #print "pre1 $pre1 $pre\n";
  #print "suf1 $suf1 $suf\n";
  #print "\n";
  
  };

};

sub dice{
  $roll = int(rand 98) +1;
};

sub names{
    dice();
  $pre1 = $roll;
  chomp $pre1;  
  dice();
  $suf1 = $roll;
  chomp $suf1;
  
  if ($pre1 lt 24){
    $pre = $prefix1[$pre1];
    chomp $pre;
  }elsif($pre1 gt 23 && $pre1 lt 49 ){
    $pre = $prefix2[$pre1];
    chomp $pre;  
  }elsif($pre1 gt 48 && $pre1 lt 74 ){
    $pre = $prefix1[$pre1];
    chomp $pre;  
  }elsif($pre1 gt 73 && $pre1 lt 99 ){
    $pre = $prefix2[$pre1];
    chomp $pre;  
  }else{
    print "error pre1 $pre1\n";
  };

  if ($suf1 lt 24){
    $suf = $suffix2[$suf1];
    chomp $suf;
  }elsif($suf1 gt 23 && $suf1 lt 49 ){
    $suf = $suffix1[$suf1];
    chomp $suf;  
  }elsif($suf1 gt 48 && $suf1 lt 74 ){
    $suf = $suffix2[$suf1];
    chomp $suf;  
  }elsif($suf1 gt 73 && $suf1 lt 99 ){
    $suf = $suffix1[$suf1];
    chomp $suf;  
  }else{
    print "error pre1 $pre1\n";
  };  


};