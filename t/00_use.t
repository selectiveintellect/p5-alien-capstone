use Test::Alien;
use Test::More tests => 3;

use_ok 'Alien::Capstone';

alien_ok 'Alien::Capstone';

my $capstone = new_ok 'Alien::Capstone';
note $capstone->cflags;
note $capstone->libs;

__END__
