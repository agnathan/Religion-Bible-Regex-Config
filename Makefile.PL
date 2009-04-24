use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Religion::Bible::Regex::Config',
    AUTHOR              => 'Daniel Holmlund <holmlund.dev@gmail.com>',
    VERSION_FROM        => 'lib/Religion/Bible/Regex/Config.pm',
    ABSTRACT_FROM       => 'lib/Religion/Bible/Regex/Config.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Religion-Bible-Regex-Config-*' },
);
