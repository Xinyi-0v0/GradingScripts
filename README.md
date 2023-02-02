# Grading Scripts

## How to use

### Prepare the script 
- download the script(.sh file) 
- check the permission of the script file by entering the below code in terminal
```
ls -l myscript.sh
```
the output could be like " rw-r--r--@ 1 zhangxinyi staff 12 Feb 2 09:34 myscript.sh"
"rw-r--r--@" means the .sh file isn't executable
- make the script executable
```
chmod 775 myscript.sh
```
the output should be like "rwxrwxr-x@ 1 zhangxinyi staff 12 Feb 2 09:34 myscript.sh"


### Clone multiple repositories at once
- create a txt file named repositories 
- containing all repositories link you want to clone (just like below)
![Screenshot 2023-02-02 at 12 03 31 PM](https://user-images.githubusercontent.com/98198407/216437592-f24da816-febc-45e8-bbd5-3182e2be775f.png)
- make sure the gitCloneMultipleRepositories.sh and repositories.txt in a same directories
-run the script 
```
./gitCloneMultipleRepositories.sh 
```
please close the terminal until all works are done

### Update multiple repositories
since we have all repositories in one directory now, we can pull the newest change at once
- prepare the script  , make sure it's executable
- enter the directory and put the .sh file in this directory
- run the script 
```
./gitCloneMultipleRepositories.sh 
```
please close the terminal until all works are done

### checkout to one specific branch
- prepare the script  , make sure it's executable
- enter the directory and put the .sh file in this directory
- run the script 
```
./gitCloneMultipleRepositories.sh branch_name
```
please close the terminal until all works are done

if you have any questions or any suggestions, welcome to email me: zhang.xinyi17@northeastern.edu