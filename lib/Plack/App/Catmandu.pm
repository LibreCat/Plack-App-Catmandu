package Plack::App::Catmandu;

use Catmandu::Sane;

our $VERSION = '0.01';

use parent qw(Plack::Component);
use Plack::Request;
use Catmandu;
use Moo;

sub call {
    my ($self, $env) = @_;
    my $req = Plack::Request->new($env);

    return [
        '404',
        [ 'Content-Type' => 'text/html' ],
        [ '404 Not Found' ],
    ];
}

1;
__END__

=encoding utf-8

=head1 NAME

Plack::App::Catmandu - Blah blah blah

=head1 SYNOPSIS

  use Plack::App::Catmandu;

=head1 DESCRIPTION

Plack::App::Catmandu is

=head1 AUTHOR

Nicolas Steenlant E<lt>nicolas.steenlant@ugent.beE<gt>

=head1 COPYRIGHT

Copyright 2017- Nicolas Steenlant

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
