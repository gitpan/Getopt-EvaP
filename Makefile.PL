use ExtUtils::MakeMaker;
use Config;

WriteMakefile(
    'NAME'         => 'Getopt::EvaP',
    'EXE_FILES'    => ['genpTk'],
    'PMLIBDIRS'     => ['Evap'],
    'VERSION_FROM' => 'EvaP.pm',
    'dist'         => {COMPRESS => 'gzip', SUFFIX => 'gz'}
);
