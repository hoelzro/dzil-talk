use strict;
use warnings;

use Test::More plan => 3;

use_ok 'Rob::DZil::Example';

is Rob::DZil::Example->magic_number, 17;
is Rob::DZil::Example->dist_zilla, 'awesome';
