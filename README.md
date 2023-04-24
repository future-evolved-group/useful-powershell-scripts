# Useful PowerShell Scripts

A collection of useful PowerShell Scripts for everyday applications.

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
## How to use

To use any of these scripts, you will simply need to download them from the repository, and save them in `C:\Scripts\PowerShell\{ScriptName.ps1}`.

To execute the script, simply press `Win+R` and type the following:

* In the run box type `powershell`
* Press `Win + Shift + Enter`

This will launch PowerShell as an administrator.

Once PowerShell has launched, you can type the following command into the blue window:

```PowerShell
    cd C:\Scripts\PowerShell
    .\ScriptName.ps1
```

You may encounter an error that looks like this: 

```PowerShell
    .\ScriptName.ps1
    File C:\Scripts\PowerShell\ScriptName.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at
    https:/go.microsoft.com/fwlink/?LinkID=135170.
    At line:1 char:1
    .\ScriptName.ps1
    ~~~~~ CategoryInfo          : SecurityError: (:) [], PSSecurityException
    FullyQualifiedErrorId : UnauthorizedAccess   
```

If you do, you will need to unrestrict PowerShell scripts from running on your system.

**N.B.** This is advised against unless you know what you're doing, or you trust where you are getting scripts from.

If you wish to proceed anyway, you can run the following command to unrestrict PowerShell script execution:

```PowerShell
    Set-ExecutionPolicy Unrestricted
```
## Authors

- [@Euan Fitzpatrick](https://www.github.com/euanfitzpatrick) from [@Future Evolved Group](https://github.com/future-evolved-group) 


## License

This code is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

