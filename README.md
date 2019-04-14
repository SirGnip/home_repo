# Setup Instructions

- launch Git Bash shell
- mkdir the directory that will be your new home directory
- cd into directory
- git clone this repo
- `cd home_repo`
- run `bin/refreshHomeFromRepo`
- `vi '/c/Program Files/Git/etc/profile'` or `vi /c/Users/USER/AppData/Local/Programs/Git/etc/profile` and add these two lines to the top of the file
```
    HOME=/c/wrk/gitbashHome
    cd ~
```
- exit Git Bash shell
- launch Git Bash shell


# Directory layout

```
~/
    bin/                        # ad-hoc scripts
    home_repo/                  # this repo
        home_dir                # contains "dot" config files (ex: .bashrc) that get copied to `~`
        bin/                    # scripts available in the PATH, under source control
           refreshHomeFromRepo  # run to refresh config files in ~ from home_repo/
```
