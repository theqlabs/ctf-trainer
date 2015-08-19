# ctf-trainer
Bootstrap CTF Environments in Vagrant!

Quick sketch of how I imagine this working:

As a prototype I want to write a few Vagrantfile's defining what each challenge requires, when you run 'vagrant up' on that file the OS version, Software and CTF binary service should be running for you. I'm going to do a few of these and see if they're useful at all. Build from there.

Future: 
Run script to log all terminal usage (learn from users)
Connect to a SCOREBOARD service?
Turn into a service where you can request a new challenge from a repository, anytime you're in the mood to pwn.

Ideas welcome: q@crypto.com

Resources:
Pulling a lot of binaries from Jonathan Salwan's awesome repo here: http://shell-storm.org/repo - much kudos to him. Beers on me if we ever meet.
