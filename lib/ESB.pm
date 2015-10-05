package ESB;
use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;

  my $r = $self->routes;

  $r->route('/')->to('main#home');
  $r->route('/home.html')->to('main#home');
  $r->route('/index.html')->to('main#home');
  $r->route('/contact.html')->to('main#contact');
  $r->route('/engagements.html')->to('main#engagements');
  $r->route('/gallery.html')->to('main#gallery');
  $r->route('/history.html')->to('main#history');
}

1;
