## Project Notes
---
### Workarounds to share same midi notes to multiple synths.
Ardour 5.8 still has [bug 7244](http://tracker.ardour.org/view.php?id=7244)
*Duplicating midi track with shared playlist results in hanging notes*

1. use Carla patchbay 
  * pros
    * uncluttered session
  * cons
    * cumbersome automation
    * needs updated carla-git and modified .bashrc
2. create multiple tracks and route midi from the source tracks to the *slaved* tracks. Activate "Monitor Input" on the slaved tracks
  * pros
    * easy automation per instance of the synth
  * cons
    * cluttered session
    * if all synths need the same automation, that automation needs to be copied to each track.

---
