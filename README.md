# HDD-Monitor

This disk space monitor checks the disk space usage of a specific filesystem (`nvme0n1p2`), sends an email alert if the usage exceeds 20%, and prints a message if the usage is within acceptable limits. 

To use it, simply run:

```sh
bash fs_status.sh
```

To make it send mails to you, simply edit the script using any editor such as vim, gedit, etc. and change the `testmail@gmail.com` to your mail.