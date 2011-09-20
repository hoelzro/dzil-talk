## no critic (RequireUseStrict)
package Rob::DZil::Example;

## use critic (RequireUseStrict)
use strict;
use warnings;

sub magic_number {
    return 17;
}

sub dist_zilla {
    return 'awesome';
}

1;

__END__

# ABSTRACT:  Rob's example

=head1 SYNOPSIS

  use Rob::DZil::Example;
  use feature 'say';

  say Rob::DZil::Example->magic_number;

=head1 DESCRIPTION

A simple example module.

=head1 FUNCTIONS

=head2 magic_number

Returns Rob's magic number.

=head2 dist_zilla

Returns the state of Dist::Zilla.

=cut
