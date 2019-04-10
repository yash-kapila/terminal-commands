#!/bin/bash

function __git_info() {
  echo "GIT aliases stored as global configuration."
  echo
  echo "List: git config --global -l"
  echo "Edit: git config --global -e"
  echo
  echo "Description"
  echo "git co <branch-name>                    git checkout <branch-name>"
  echo "git cob <branch-name>                   git checkout <branch-name> -b"
  echo "git cod <branch-name>                   git checkout develop"
  echo "git graph                               git log --graph --decorate --pretty=oneline --abbrev-commit"
  echo "git oneline                             git log --oneline"
  echo "git egc                                 git config --global -e"
  echo "git elc                                 git config -e"
  echo "git cp                                  git cherry-pick"
  echo "git cm                                  git commit -m"
  echo "git po                                  git push origin"
  echo "git s                                   git status"
  echo "git d                                   git diff"
  echo "git b                                   git branch"
  echo "git rbd                                 git rebase develop"
  echo "git rbi                                 git rebase -i"
  echo "git rmb                                 git branch -d"
  echo "git ls-files-ignored                    git ls-files --other --directory --exclude-standard"
  echo
}

function __unix_info() {
  echo "Listing common UNIX-like commands"
  echo
  echo "Help on any command"
  echo "man <command>                           Type man rm to read the manual for the rm command."
  echo "whatis <command                         Give short description of command."
  echo "whoami                                  Gives the name of current logged-in user"
  echo
  echo "Change directory"
  echo "cd <dirname>                            Change to specified directory"
  echo "cd ~                                    Go to home directory"
  echo
  echo "Remove a directory"
  echo "rmdir <dirname>                         Remove a directory only if it is empty"
  echo "rm -r <dirname>                         Remove all files and subdirs recursively"
  echo "rm -rf <dirname>                        Remove all files and subdirs recursively and forcefully"
  echo
  echo "Copy a file or directory"
  echo "cp <source-file> <target-file>          Copy source file to target file"
  echo "cp <source-dir> <target-dir> -r         Recursively copy directories and sub-directories"
  echo "cat <new-file> >> <old-file>            Append new file to old file"
  echo
  echo "Pipes and Redirection: Pipe a command to another command, and redirect to a file."
  echo "<command> > <file>                      Redirect output to a file"
  echo "<command> >> <file>                     Append output to an existing file"
  echo "<command> < <file>                      Get input from a file"
  echo "<command> < <file1> > <file2>           Get input from a file1 and write to file2"
  echo "<command1> | <command2>                 Pipe one command to another"
  echo
  echo "Network and process related"
  echo "lsof -i tcp:<port-number>               List all processes running on port specified"
  echo "kill pid <process-id>                   Kill process running with the process id"
  echo "kill -9 pid <process-id                 Force kill process running with the process id"
  echo
  echo "Permissions"
  echo "ls -l <dirname>                         List items in current directory and show permissions"
  echo "chmod ugo <file>                        Change permissions of file"
  echo "                                        u - user's permissions"
  echo "                                        g - group's permissions"
  echo "                                        o - everyone else's permissions"
  echo "                                        Values of ugo can be any number between 0 and 7"
  echo "                                        7 - full permissions"
  echo "                                        6 - read and write only"
  echo "                                        5 - read and executable only"
  echo "                                        4 - read only"
  echo "                                        3 - write and execute only"
  echo "                                        2 - write only"
  echo "                                        1 - execute only"
  echo "                                        0 - no permissions"
  echo
}

function __ibmcloud_info() {
  echo
  echo "Listing frequently used commands for IBM Cloud"
  echo "ibmcloud login                                       Login to IBM Cloud"
  echo "\$(ibmcloud cs cluster-config --export <cluster>)    Switch to a specific K8S cluster"
}

function __docker_info() {
  echo "List of frequently used docker commands"
  echo
  echo "Currently under construction. Find reference to CLI at https://docs.docker.com/engine/reference/commandline/cli/"
  echo
}

function __kubernetes_info() {
  echo "List of frequently used Kubernetes commands"
  echo
  echo "Get the Kubectl Aliases from here:"
  echo "https://github.com/ahmetb/kubectl-aliases"
  echo "You can use these as shortcuts to all of the kubectl commands"
  echo "String together the following letters to use the aliases"
  echo "======== KUBECTL COMMANDS USING ALIASES ========"
  echo "kc               kubectl                  command to interact with Kubernetes"
  echo "==================== ACTIONS ===================="
  echo "g                get                      list the resources of a particular type"
  echo "d                describe                 output more detailed information on a named resource or all resources of that type"
  echo "a                apply                    create a resource from a single yaml file"
  echo "rm               delete                   remove a resource from the cluster"
  echo "lo               logs -f                  follow the output logs of a pod, or application resource"
  echo "ex               exec -it                 open a terminal session connected to the container"
  echo "execbash         exec -it ${} /bin/bash   open bash session conntected to the container in pod ${}"
  echo "=================== RESOURCE ==================="
  echo "dep              deployment               resource type deployment: managing pods for an application"
  echo "svc              service                  resource type service: load balancer for pods"
  echo "ing              ingress                  resource type ingress: traffic routing into the cluster"
  echo "po               pods                     resource type pod: holder for containers"
  echo "no               nodes                    resource type nodes: workers that action and schedule requests"
  echo "cm               configmaps               resource type configmaps: application configuration usually mounted to pod"
  echo "ns               namespaces               resource type namesapces: segregating the resources"
  echo "sec              secret                   resource type secret: contains sensitive information"
  echo "==================== OPTIONS ==================="
  echo "sys              -n kube-system           execute the request against the kube-system namespace"
  echo "all              -all-namespaces          execute the request against all namespaces"
  echo "sl               --show-labels            display the labels that are associated with the resource"
  echo "w                --watch                  output all of the events that for that resource"
  echo "oyaml            -o=yaml                  output the configuration file of the resource in yaml format"
  echo "owide            -o=wide                  output the resources with additional information"
  echo "ojson            -o=json                  output the configuration file of the resource in json format"
  echo "==================== NOTES ====================="
  echo "Most of these letters can be strung together in a specific order"
  echo "Usually a command would be in the structure 'kc<action><resource><options>'"
  echo "For example: kcgpo = kubectl get pods, kcrmcm <name> = kubectl remove configmaps <name>"
  echo
}

function __sync_with_github_remote() {
  echo "Syncing with GitHub master"
  git checkout master
  git pull origin master
}

function howto() {
  echo "Enter the index:"

  OPTIONS=("git" "unix" "ibmcloud" "docker" "kubernetes" "GitHub Sync")

  select option in "${OPTIONS[@]}";
  do
    case $option in
      "git")
        __git_info
        ;;
      "unix")
        __unix_info
        ;;
      "ibmcloud")
        __ibmcloud_info
        ;;
      "docker")
        __docker_info
        ;;
      "kubernetes")
        __kubernetes_info
        ;;
      "GitHub Sync")
        __sync_with_github_remote
        ;;
      *)
        echo "Err.. Incorrect option selected"
        echo
        ;;
    esac
    break;
  done
}
