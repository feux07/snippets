# sudo apt install inotify-tools
# https://linux.die.net/man/1/inotifywait
# http://manpages.ubuntu.com/manpages/xenial/man1/notify-send.1.html

inotifywait -m /home/feux07/testt -e create -e moved_to -e delete -e access -e modify |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        notify-send "WATCHING STATUS" "The file '$file' appeared in directory '$dir' via '$action'" --icon=dialog-information
        # do something with the file
    done

