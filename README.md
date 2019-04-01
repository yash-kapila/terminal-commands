# Terminal Commands

## Description

This shell script contains a list of all basic commands which one uses as a developer but can't seem to remember them all resorting to look it up online again and again.

With this script, those commands are always in hand using a simple bash command in the terminal.

## Setup

### Mac OS

1. In your home directory create a hidden directory named `.howto`. It need not be hidden necessarily so it is upto the developer.

```
mkdir .howto
```

2. Clone this repository inside the newly created directory.

3. Open your bash profile and copy the following contents inside.

```
source ~/.howto/.how_to_commands.sh
```

4. You have got the setup on your machine now. You would be able to use it in a new terminal session. Should you wish to use the commands on your existing session, you can run the following

```
source ~/.bash_profile
```

## Usage

Enter `howto` in your terminal window and press `Enter`. Enter the index of application you wish to see the commands for. For example, enter 1 for `git` and press `Enter`.

```
~ yash$ howto
Enter the index:
1) git
2) unix
3) ibmcloud
4) docker
5) kubernetes
6) GitHub Sync
#? 1
```

* Use option 6 to sync your local version with one from remote

## Note

This repository is in its early stages and is under construction. At the moment, it contains list of applications which I use frequently. Please feel free to add/modify commands or add new applications to the list. I would very much appreciate it.