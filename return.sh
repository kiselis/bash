#!/bin/bash

adduser()
{
	USER=$1
	PASSWORD=$2
	shift ; shift
	COMMENTS=$@
	useradd -c "${COMMENTS}" $USER
	if [ "$?" -ne "0" ]; then
		echo "Vartotojo sukūrimas nepavyko"
		return 1
	fi
	passwd $USER $PASSWORD
	if [ "$?" -ne "0" ]; then
		echo "Slaptažodžio nustatymas nepavyko"
		return 2
	fi
	echo "Pridėtas vartotojas $USER ($COMMENTS) su slaptažodžiu $PASSWORD"
}

adduser Jonas Kiselis Lietuva
ADD_USER_RETURN_CODE=$?
if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
	echo "Kažkas negerai su useradd"
elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then
	echo "Kažkas negerai su passwd"
else
	echo "Jonas Kiselis pridėtas prie sistemos"
fi
