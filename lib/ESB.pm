package ESB;
use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;

  my $r = $self->routes;

  $r->route('/')->to('main#home');
  $r->route('/contact.html')->to('main#contact');
  $r->route('/engagements.html')->to('main#engagements');
}

1;
