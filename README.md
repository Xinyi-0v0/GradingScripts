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

### Update multiple repositories
since we have all repositories in one directory now, we can pull the newest change at once
- prepare the script updateLocalRepo.sh, make sure it's executable
- enter the directory and put the .sh file in this directory
- run the script 
```
./updateLocalRepo.sh
```
please don't close the terminal until all works are done

### checkout to one specific branch (main or assignment branch)
- prepare the script checkoutBranch.sh , make sure it's executable
- enter the directory and put the .sh file in this directory
- run the script 
```
./checkoutBranch branch_name
```

pay attention to the warning message in terminal:


it would tell you which directory doesn't have the assignment branch. (Maybe it's because the student named the branch differently ) 
please don't close the terminal until all works are done


Using updateLocalRepo.sh and checkoutBranch.sh can only pull all changes of main branch and the new branch(which didn't exist locally before). If you use it after due date, it won‘t cause problem, because students normally won’t update their assignment after due date. 

For example, if Jack creates a assignment branch and submit his assignment on Feb 2. After you using this script, you can get all changes in main and assignment branch.
But if Jack makes new commits to the assignment branch after the time you use checkoutBranch.sh, you can only get the new change by pull the branch from remote repository separately, updateLocalRepo.sh won't work.


If you have any questions or any suggestions, welcome to email me: zhang.xinyi17@northeastern.edu