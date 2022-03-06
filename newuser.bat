@echo off

net user "NewEmployee" "pass123" /add

WMIC USERACCOUNT WHERE "Name='NewEmployee'" SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='NewEmployee'" SET Passwordchangeable=FALSE

exit
