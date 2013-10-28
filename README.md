# Docker presentation

Files for my introductory presentation of Docker at the Sthlm Devops
Docker meetup held on October 30th 2013.

Slides can be found [here](https://docs.google.com/presentation/d/1xf6J6ob44Fel6_hfIGZ0KF33YwgPGWoFZ-TYM1VBMPo/edit#slide=id.g11f46d04a_010).

I've prepared a vagrant box with some provisioning to quickly get up to
speed. To use it:

1. Make sure you have [vagrant](http://vagrantup.com) and [VirtualBox](https://www.virtualbox.org/) installed
2. Do `vagrant up && vagrant ssh`
3. Start playing: `docker pull ubuntu` and try it out by doing `docker run -t -i ubuntu /bin/bash`
4. Go to `/vagrant/nginx-example` and run `docker build -t nginx .`

Enjoy!
