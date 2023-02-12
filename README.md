# Grading Scripts

## How to use

### Prepare the script 
- download the script(.sh file) 
- check the permission of the script file by entering the below code in terminal
```
ls -l myscript.sh
```
the output could be like "-rwxr-xr-x@ 1 zhangxinyi  staff   268 Feb  2 12:46 myscript.sh"
if the fifth letter of permission bits is 'x', it means the .sh is executable, you can skip the following step
- make the script executable
```
chmod 775 myscript.sh
```
the output should be like "rwxrwxr-x@ 1 zhangxinyi staff 12 Feb 2 09:34 myscript.sh"


### Clone multiple repositories at once
- create a txt file named repositories 
- add all repositories link you want to clone (just like below)
![Screenshot 2023-02-02 at 12 03 31 PM](https://user-images.githubusercontent.com/98198407/216437592-f24da816-febc-45e8-bbd5-3182e2be775f.png)
- make sure the gitCloneMultipleRepositories.sh and repositories.txt in a same directory
-run the script under the directory
```
./gitCloneMultipleRepositories.sh 
```
please don't close the terminal until all works are done

### Update multiple repositories and checkout to one specific branch (main or assignment branch) 
since we have all repositories in one directory now, we can pull the newest change at once
- prepare the script checkoutAndPull.sh, make sure it's executable
- enter the directory and put the checkoutAndPull.sh file in this directory
- run the script 
```
./updateLocalRepo.sh branch_name
```

pay attention to the warning message in terminal:

it would tell you which directory doesn't update successfully. 
Common Waring:
- " seainfo...  doesn't have this branch."
  - It's because the student named the branch differently, you need to manually update this repo. 
- "fatal: Need to specify how to reconcile divergent branches.
  error: Your local changes to the following files would be overwritten by checkout:"
  - It's because you made some change to student's repo. You need to manually discard the change, by using the following code under in that repo. 
      ```
      git reset --hard
      ```

  
please don't close the terminal until all works are done

### Install all dependencies for multiple directory
- prepare the script installDependencies.sh, make sure it's executable
- enter the directory(containing all repos) and put the installDependencies.sh file in this directory
- run the script 
```
# assignment
./updateLocalRepo.sh work/assignment_dir_name

# project
./updateLocalRepo.sh project1
```

If you have any questions or any suggestions, welcome to email me: zhang.xinyi17@northeastern.edu
