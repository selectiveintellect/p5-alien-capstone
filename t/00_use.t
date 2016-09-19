use Test2::Bundle::Extended;
use Test::Alien;
use Alien::Capstone;
alien_ok 'Alien::Capstone';
my $capstone = Alien::Capstone->new;
ok(ref $capstone eq 'Alien::Capstone', 'object is Alien::Capstone');
note $capstone->cflags;
note $capstone->libs;

done_testing();

__END__
