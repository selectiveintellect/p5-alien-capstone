use strict;
use warnings;
use Alien::Base::ModuleBuild;

my $build = Alien::Base::ModuleBuild->new(
    module_name => 'Alien::Capstone',
    license => 'apache',
    dist_author => 'Vikas N. Kumar <vikas@cpan.org>',
    dist_abstract => 'Alien module for Capstone Engine from www.capstone-engine.org',
    create_readme => 0,
    create_license => 1,
    configure_requires => {
        'Module::Build' => 0,
        'Alien::Base' => '0.029',
    },
    build_requires => {
        'Alien::Base' => '0.029',
        'Test::Alien' => 0,
        'Module::Build' => 0,
    },
    requires => {
        'Alien::Base' => '0.029',

    },
    alien_name => 'capstone',
    alien_repository => {
        protocol => 'http',
        host => 'github.com',
        location => '/aquynh/capstone/archive/3.0.4.tar.gz'
        pattern => qr{([0-9\.]+)\.tar\.gz$}, # get the latest release build
    },
    alien_msys => 1,
    alien_bin_requires => {
        'Alien::gmake' => 0.11,
    },
    alien_build_commands => [
        "%{gmake} all",
    ],
    alien_install_commands => [
        "%{gmake} install",
    ],
    alien_test_commands => [
        "%{make} test",
    ],
);

$build->create_build_script;

__END__

