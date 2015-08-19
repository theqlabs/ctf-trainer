# ctf-trainer
Bootstrap CTF Environments using Vagrant!

- install vagrant and virtualbox
- pick a challenge
- vagrant up && vagrant ssh
- have fun!
- when you're done, run: cleanup.sh and move to the next challenge 

Quick sketch of how I imagine this working, each challenge dir will have two files:
- Vagrantfile will define OS, Networking
- bootstrap.sh will pull down all necessary software and configure environment
- cleanup.sh halts, destroys and removes any files left over from Vagrant

Recommended Vagrant plugins:
- https://github.com/dotless-de/vagrant-vbguest

TODO:
Include qemu as a provider (requires plugins and extra configs) 
Run script to log all terminal usage (archive of how you beat a challenge) and sync to /vagrant for safe-keeping
Connect to a SCOREBOARD service?
Turn into a service where you can request a new challenge from a repository, anytime you're in the mood. pwnd? (pwn daemon)

Ideas welcome: q@crypto.com
