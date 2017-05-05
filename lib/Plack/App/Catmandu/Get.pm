package Plack::App::Catmandu::Get;

use Catmandu::Sane;

our $VERSION = '0.01';

use parent qw(Plack::Component);
use Moo;

has bag => (is => 'ro', required => 1);

sub call {
    my ($self, $env) = @_;
    my $router = $self->router;

    if (my $params = $router->match($env)) {
        my $action = $params->{action};
        $self->$action($params);
    } elsif ($router->method_not_allowed) {
        $self->method_not_allowed;
    } else {
        $self->not_found;
    }
}

