use ExtUtils::MakeMaker;

my %opts = (
    'NAME'	   => 'Pod::POM',
    'VERSION_FROM' => 'lib/Pod/POM.pm',
    'EXE_FILES'    => [ 'bin/pom2', 'bin/pomcheck' ],
    'dist'         => {
	'COMPRESS' => 'gzip',
	'SUFFIX'   => 'gz',
    },
);

if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{ AUTHOR }   = 'Andy Wardley <abw@kfs.org>';
    $opts{ ABSTRACT } = 'POD Object Model',
}

WriteMakefile( %opts );
