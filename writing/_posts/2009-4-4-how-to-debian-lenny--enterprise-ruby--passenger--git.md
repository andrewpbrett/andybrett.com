---
type: post
layout: main
title: "How-To: Debian (Lenny) + Enterprise Ruby + Passenger + Git"
---
_Editor's Note: I am continually amazed by and grateful for the thousands of
internet denizens who write about their problems and the solutions they have
found. This post is one feeble attempt at contributing to that collective
knowledge; hopefully many more will follow._

  
I decided to rework my [home page](http://www.andrewpbrett.com/) as a simple
Rails application, mainly to take advantage of the way Rails handles
views/templates. Is this overkill? Probably. Are there a ton of other tools I
could have used? Definitely. It's a classic case of holding a hammer and
taking a look around for nails. But I digress. I also decided to set up
Enterprise Ruby/Rails, Passenger, and Git, all of which are totally overkill
at the moment but will hopefully lay a groundwork for things to come. Again, I
digress.

  
The first thing we'll need to do, assuming we're working with a fresh install
of Debian (5.0 - Lenny), is install libraries for Ruby, Apache, and mySQL.

  

apt-get install build-essential apache2 ruby1.8 zlib1g-dev libssl-dev mysql-
server mysql-common libmysqlclient15-dev libmysqlclient15off apache2-prefork-
dev libreadline5-dev

  
(I have no idea what a couple of those items are: I was prompted to install
them later on in the process, so if you install them up front it will go more
smoothly)

  
Get the [most recent
version](http://www.rubyenterpriseedition.com/download.html) of Ruby
Enterprise Edition.

  
For me it was:

  

wget http://rubyforge.org/frs/download.php/51100/ruby-
enterprise-1.8.6-20090201.tar.gz

  
Note the Enterprise Ruby version in red, we'll need it later.

  
The Ruby Enterprise installer looks in /usr/bin/ruby for Ruby, which doesn't
currently exist; link up your install in ruby1.8 by doing

  

ln -s /usr/bin/ruby1.8 /usr/bin/ruby

  
Now, using your own version of Enterprise Ruby from above in place of the
###...:

  
Unarchive:

  

tar xzvf ruby-enterprise-########.tar.gz

  
Run the installer:

  

./ruby-enterprise-########/installer

  
Follow the prompts. Should be self-explanatory.

  
Next, remove the old link to ruby1.8:

  

rm /usr/bin/ruby

  
and link up to the enterprise ruby goodness:

  

ln -s /opt/ruby-enterprise-1.8.6-########/bin/rake /usr/bin/rake

ln -s /opt/ruby-enterprise-1.8.6-########/bin/gem /usr/bin/gem

ln -s /opt/ruby-enterprise-1.8.6-########/bin/rails /usr/bin/rails

ln -s /opt/ruby-enterprise-1.8.6-########/bin/ruby /usr/bin/ruby

  
Now install Passenger:

  

/opt/ruby-enterprise-1.8.6-########/bin/passenger-install-apache2-module

  
As you may have noticed, the Enterprise Ruby install directs you to add some
lines to Apache's config file. If you're using Apache2, open that up with

  

vi /etc/apache2/apache2.conf

  
and add the following, replacing the gem version in red (2.1.2 at this time)
with your own gem version.

  

LoadModule passenger_module /opt/ruby-enterprise-1.8.6-########/lib/ruby/gems/
1.8/gems/passenger-2.1.2/ext/apache2/mod_passenger.so

PassengerRoot /opt/ruby-
enterprise-1.8.6-########/lib/ruby/gems/1.8/gems/passenger-2.1.2

PassengerRuby /opt/ruby-enterprise-1.8.6-########/bin/ruby

  
That's it for Enterprise Ruby and Passenger! Next up, Git:

  

aptitude install build-essential gettext zlib1g-dev

  
Get Git - right now it's:

  

wget http://kernel.org/pub/software/scm/git/git-1.6.2.1.tar.gz

  
Unarchive; configure; make; install!

  

tar xvzf git-1.6.2.1.tar.gz

cd git-1.6.2.1

./configure

make

make install

  
You'll likely want to set up Virtual Hosts on Apache as well; this gets a
little bit specific for the purposes of this how-to so I'll leave it at
[RTFM](http://httpd.apache.org/docs/1.3/vhosts/) :-)

