use ExtUtils::MakeMaker;
use Config;

WriteMakefile(
    'NAME'         => 'Getopt::EvaP',
    'VERSION_FROM' => 'EvaP.pm',
    'dist'         => {COMPRESS => 'gzip', SUFFIX => 'gz'}
);
