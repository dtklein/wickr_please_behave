# wickr_please_behave
Make Wickr More Portable

# What's awesome
Wickr is a fantastic instant messaging and social media tool that keeps information proliferation and use controls in the hands of the author of a message. The system uses end-to-end encryption (sender and client agree on a shared secret, which the intermediaries cannot guess/obtain, and the communication is protected with that) and DRM based on strong cryptographic algorithms, as recommended in NSA Suite B. 

# What's galling
The downside is that the Wickr client is available on limited platforms (although they do hit the major ones): IOS, Android, Windows, Ubuntu Linux 14.04 and Mac OS. What this is missing is Red Hat Derived versions of Linux and more recent versions of Ubuntu Linux. Many of my friends and colleagues use the newest LTS version of Ubuntu Linux or CentOS (the free (not commercially supported) version of Red Hat Enterprise Linux) or BSD. 

# No kvetching without offering to help
This solution is to scratch my own itch and those of my colleagues and bros. I am offering the world a docker container that will run enough Ubuntu 14.04 to run the Wickr client, and then the Ubuntu client. This will enable more Linux and BSD desktops to use this fabulous instant messaging and social media tool without having to run an *OLD* version of Ubuntu as the main desktop or something as heavy and clunky as a full VM for a single GUI tool. I am releasing this under the BSD-license, so in short, do what you want with it, give me credit for my work, don't blame me or sue me. 

# References
I could not have done this on my own. I have blatantly borrowed ideas, information, techniques and procedures from the following:
 - https://docs.docker.com/engine/tutorials/usingdocker/ (Of course, the natural starting place)
 - http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/ (Getting me started with Docker contained GUI application)
 - http://wiki.ros.org/docker/Tutorials/GUI (several approaches to using a GUI application in Docker image)
 - https://wiki.freebsd.org/Docker (Yes, BSD does now support running docker images, although I have not tested this solution in BSD, and they admit their support of 64bit Linux is still a WIP and sort of pre-beta quality) 


