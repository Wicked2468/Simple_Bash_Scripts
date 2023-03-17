

echo "Do you want to save the output to a file(0/1):"
read choice
if [ $choice -eq 1 ]
then
	echo "Enter the file name:"
	read iplist
	arp -a |cut -d ")" -f 1|cut -d "(" -f 2 >> $iplist.txt
	echo "Open the text file name "$iplist""
else
	arp -a |cut -d ")" -f 1|cut -d "(" -f 2


fi
