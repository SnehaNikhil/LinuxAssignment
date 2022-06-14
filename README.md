# LinuxAssignment
Question1:Configure smtp in localhost.
Ans:
Sudo apt update

sudo apt install mailutils

**select internetsite**

sudo dpkg-reconfigure postfix

sudo nano /etc/postfix/main.cf

inet_interfaces = loopback-only

mydestination = localhost.$mydomain, localhost, $myhostname

sudo systemctl restart postfix

echo "This is the body of the email" | mail -s "This is the subject line" your_email_address



Question2:Create a user in your localhost, which should not be able to execute the sudo command.
Ans:
        adduser newuser
	su newuser
	sudo ls
	

Question3:Configure your system in such a way that when a user type and executes a describe command from anywhere of the system it must list all the files and folders of the user's current directory.
Ans:
    vi ~/.bashrc
    alias describe=’ls -l’
    source ~/.bashrc
    
    
Question4:Users can put a compressed file at any path of the linux file system. The name of the file will be research and the extension will be of compression type, example for gzip type extension will be .gz.
You have to find the file and check the compression type and uncompress it. 
Ans: Please see src


Question5: onfigure your system in such a way that any user of your system creates a file then there should not be permission to do any activity in that file.
 Note:- Don’t use the chmod command.
 Ans:
      sudo nano /etc/profile
      umask 777
      
      
 Question6:Create a service with the name showtime , after starting the service, every minute it should print the current time in a file in the user home  diectory.
 
 Ans: For script refer src Showtime.sh
 
 creating service:
 
 sudo chmod +x /home/sigmoid/QuestionTime/Showtime.sh
sudo nano /lib/systemd/system/Showtime.service 

[Unit]
Description=write time service

[Service]
ExecStart=/home/sigmoid/QuestionTime/Showtime.sh

[Install]
WantedBy=multi-user.target

sudo systemctl daemon-reload 

sudo systemctl enable Showtime.service 
sudo systemctl start Showtime.service 
sudo systemctl status Showtime.service 
 
