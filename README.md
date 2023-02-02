# GradingScripts

## How to use

### Prepare the script 
- download the script(.sh file)
- check the permission of the script
```
ls -l myscript.sh

```
the output could be " rw-r--r--@ 1 zhangxinyi staff 12 Feb 2 09:34 myscript.sh"
"rw-r--r--@" means the .sh file isn't executable
- make the script executable
```
chmod 775 myscript.sh
```
the output shoube be like "rwxrwxr-x@ 1 zhangxinyi staff 12 Feb 2 09:34 myscript.sh"


## Clone mutiple repositories at once
- create a txt file named repositories 
- containing all repositories link you want to clone (just like below)
![Screenshot 2023-02-02 at 12 03 31 PM](https://user-images.githubusercontent.com/98198407/216437592-f24da816-febc-45e8-bbd5-3182e2be775f.png)
- make sure the gitCloneMutipleRepositories.sh and repositories.txt in a same directories
-run the script 
```
./gitCloneMutipleRepositories.sh 
```

