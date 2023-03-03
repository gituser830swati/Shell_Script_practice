#!/bin/sh
echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"

select option in $choice; d1
      if [ $REPLY = 1];
then
      echo "You have selected encryption"
      echo "Please enter the file name "
      read file;
      gpg -c $file
      echo "The File has been encrypted"
else
      echo "You have selected decryption"
      echo "Please enter the file name"
      read file2;
      gpg -d $file2
      echo "The File has been decrypted"
fi
done