use 5.006001;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME             => "Data::Dumper",
    VERSION_FROM     => 'Dumper.pm',
    'dist'           => {
        COMPRESS     => 'gzip -9f',
        SUFFIX       => 'gz',
        DIST_DEFAULT => 'all tardist',
    },
    MAN3PODS         => {},
    DEFINE           => '-DUSE_PPPORT_H',
    INSTALLDIRS      => 'perl',
    META_MERGE => {
        resources => {
            repository  => 'git://perl5.git.perl.org/perl.git perl-git',
            bugtracker  => 'http://rt.perl.org/perlbug/',
            MailingList => 'http://lists.cpan.org/showlist.cgi?name=perl5-porters'
        },
    }
);

