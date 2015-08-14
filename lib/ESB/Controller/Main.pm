package ESB::Controller::Main;

use Mojo::Base 'Mojolicious::Controller';

sub theme {
  my $c = shift;

  my $alt_theme = $c->stash('theme') eq 'default' ? 'slate' : 'default';
  my $current_page = $c->url_for;

  $c->app->log->debug("Current page: [$current_page]");

  $current_page =~ s!.*/!/!;
  $current_page = '' unless $current_page =~ /html$/;

  $c->stash( alt_theme_link => $alt_theme . $current_page );

  1;
}

1;
