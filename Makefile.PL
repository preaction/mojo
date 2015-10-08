use 5.010001;

use strict;
use warnings;

use ExtUtils::MakeMaker;

# IO::Socket::IP 0.26 first shipped with Perl 5.19.8
# Functon::Parmeters 1.0605 is required up to Perl 5.20.0
WriteMakefile(
  NAME         => 'Mojolicious',
  VERSION_FROM => 'lib/Mojolicious.pm',
  ABSTRACT     => 'Real-time web framework',
  AUTHOR       => 'Sebastian Riedel <sri@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    no_index       => {directory => ['examples', 't']},
    prereqs        => {runtime => {requires => {perl => '5.014'}}},
    resources      => {
      bugtracker => {web => 'https://github.com/kraih/mojo/issues'},
      homepage   => 'http://mojolicio.us',
      license    => ['http://www.opensource.org/licenses/artistic-license-2.0'],
      repository => {
        type => 'git',
        url  => 'https://github.com/kraih/mojo.git',
        web  => 'https://github.com/kraih/mojo',
      },
      x_IRC => 'irc://irc.perl.org/#mojo'
    },
  },
  PREREQ_PM => {
    $^V >= 5.020000 ? () : ('Function::Parameters' => '1.0605'),
    'IO::Socket::IP' => '0.26'
  },
  EXE_FILES => ['script/hypnotoad', 'script/mojo', 'script/morbo'],
  test => {TESTS => 't/*.t t/*/*.t'}
);
