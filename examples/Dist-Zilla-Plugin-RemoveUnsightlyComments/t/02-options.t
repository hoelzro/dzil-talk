use strict;
use warnings;

use Test::More tests => 1;
use Test::DZil;

my $tzil = Builder->from_config(
    { dist_root => 'corpus' },
    { add_files =>
        {
            'source/dist.ini' => simple_ini({
                name    => 'Fake',
                version => 0.01,
            }, qw/GatherDir FakeRelease MakeMaker Manifest/, [
                RemoveUnsightlyComments => {
                    markers => ['XXX', 'FOR ROB'],
                },
            ])
        },
    },
);

$tzil->build;

my $got      = $tzil->slurp_file('build/lib/Fake.pm');
my $expected = <<PERL;
package Fake;

use strict;
use warnings;

sub fake_method {
}

1;
PERL

is $got, $expected;
