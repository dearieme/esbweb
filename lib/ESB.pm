package ESB;
use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;

  my $r = $self->routes;

  my $theme = $r->under('/:theme')->to('main#theme', theme => 'default');

  $theme->route('/')->to('main#home');
  $theme->route('/home.html')->to('main#home');
  $theme->route('/index.html')->to('main#home');
  $theme->route('/contact.html')->to('main#contact');
  $theme->route('/engagements.html')->to('main#engagements');
  $theme->route('/gallery.html')->to('main#gallery');
  $theme->route('/history.html')->to('main#history');
}

1;
