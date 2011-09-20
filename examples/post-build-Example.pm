## no critic (RequireUseStrict)
package Rob::DZil::Example;
{
  $Rob::DZil::Example::VERSION = '0.01';
}

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



=pod

=head1 NAME

Rob::DZil::Example - Rob's example

=head1 VERSION

version 0.01

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

=head1 AUTHOR

Rob Hoelz <rob@hoelz.ro>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Rob Hoelz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT:  Rob's example

