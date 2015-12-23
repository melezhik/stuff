#!/usr/bin/env perl

use Mojolicious::Lite;
use strict;

get '/' => sub {
    my $c = shift;
    $c->render( text => 'HELLO USER! THIS IS INDEX PAGE'  );
};

get 'foo/bar' => sub {
    my $c = shift;
    $c->render( text => 'I AM FOO-BAR'  );
};


post 'bar/baz' => sub {
    my $c = shift;
    $c->render( text => 'POST TO BAR-BAZ OK'  );
};


app->start;

