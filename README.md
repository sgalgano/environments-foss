environments-foss
==

Environment files for running Adjacent Link open source tools
(applications, plugins, Python modules) from built local source trees.

Source trees must reside in the same root directory (default: ~/dev).

```
$ . ~/dev/environments-foss/letce2.env
$ . ~/dev/environments-foss/emane-tutorial.env
$ cd ~/dev/letce2-tutorial/exp-01
$ make
$ letce2 lxc start -e  ~/dev/environments-foss/emane-tutorial.env
```
