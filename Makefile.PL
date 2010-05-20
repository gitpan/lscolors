use ExtUtils::MakeMaker;

my $version = `sh bin/lscolors --version`;
chomp $version;

WriteMakefile(

   NAME => 'lscolors',
   
   VERSION  => $version,
   
   ABSTRACT  => 'Filter. Takes stdin, expected to be human legible LS_COLORS spec',
   
   LICENSE        => 'perl',   
   
   AUTHOR         => 'Leo Charre leocharre at cpan dot org',   
   
   EXE_FILES => [qw(bin/lscolors)],

   
);


