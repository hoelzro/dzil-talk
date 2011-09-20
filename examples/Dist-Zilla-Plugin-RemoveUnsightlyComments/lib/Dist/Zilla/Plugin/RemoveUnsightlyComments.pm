## no critic (RequireUseStrict)
package Dist::Zilla::Plugin::RemoveUnsightlyComments;

## use critic (RequireUseStrict)
use Moose;
with 'Dist::Zilla::Role::FileMunger';

has markers => (
    is      => 'ro',
    isa     => 'ArrayRef',
    default => sub { [qw/XXX TODO/] },
);

sub mvp_multivalue_args {
    qw(markers)
}

sub mvp_aliases {
    return {
        marker => 'markers',
    };
}

sub _compile_re {
    my ( $self ) = @_;

    my $markers = $self->markers;
    $markers    = join('|', map { quotemeta() } @$markers);

    return qr/(?:\n)?[ \t]*#\s*(?:$markers).*/;
}

sub munge_file {
    my ( $self, $file ) = @_;

    my $name = $file->name;
    return unless $name =~ /\.pm$/;

    my $re      = $self->_compile_re;
    my $content = $file->content;
    my $dirty   = 0;

    $dirty = $content =~ s/$re//gs;
    if($dirty) {
        $file->content($content);
    }
}

1;

__END__

# ABSTRACT:  A short description of Dist::Zilla::Plugin::RemoveUnsightlyComments

=head1 SYNOPSIS

  ; in dist.ini
  [RemoveUnslightlyComments]

=head1 DESCRIPTION

Removes unsightly comments from your Perl modules.

=head1 OPTIONS

=head2 marker/markers

Markers that signify an unsightly comment.  Defaults to 'XXX' and 'TODO'.

=cut
