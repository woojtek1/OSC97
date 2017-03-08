## Project files for One Synth Challenge #97 featuring Fortune Cookie 2012

This is a work in progress music project by @rghvdberg and @jruegg for the One Synth Challenge.
Synth used in this project : Fortune Cookie 2012
This synth can be downloaded for free on https://archive.org/details/HGFortune-FortuneCookie-2012.
For further info on the OSC check https://sites.google.com/site/kvrosc/osc-97-fortune-cookie-2012
KVR Thread : https://www.kvraudio.com/forum/viewtopic.php?p=6717497#p6717497

We are using [Ardour 5.8](http://www.ardour.org) as the DAW on Linux (Ubuntu and Mint) with [KX Studio](http://kxstudio.linuxaudio.org/) repositories

***

### Windows plugins on linux
F-Cookie is a Windows 32 bit VST plugin, in order to use it we use [Carla](http://kxstudio.linuxaudio.org/Applications:Carla) and [Airwave](https://github.com/phantom-code/airwave/releases) for 'bridging' these plugins.
 We found out that Carla couldn't find the plugins because of different install paths on our system.
 @falktx fixed this issue in no-time. Many thanks to him!
 
 For carla to find the `F-Cookie-2012.dll` you need to add the paths to your vst directories in **.bashrc** in your home directory.

Here's what I appended to `.bashrc`

    # needed for carla-bridge-winX and shared projects
    # my vst path for Airwave (/home/rob/.vst_win) is NOT included
     export VST_PATH=/home/rob/.vst:/usr/lib/vst:/home/rob/.wine/drive_c/vst
  
Adjust the path to your needs
***
### Installing scripts
Unfortunately (see what I did there? lol) F-Cookie has ~~some~~ bugs. One issue is that on exiting Ardour, F-Cookie tends to crash. The project saves fine and loads fine afterwards but it's annoying. These crashes of the plugin can mostly be avoided by disabling F-Cookie before exiting Ardour. @rgareus has kindly provided a great script for this. Check the [scripts directory](https://github.com/rghvdberg/OSC97/tree/master/scripts) for integrating and using the scripts in Ardour.

---
Other music by @jruegg https://soundcloud.com/jruegg
Other music by @rghvdberg https://soundcloud.com/rghvdberg