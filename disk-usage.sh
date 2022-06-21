THRESH=95
USED = $(df -h --total | grep 'total' | awk '{print $5}'  | tr -d '%')

[ $USED -gt $THRESH ] && echo 'Space usage is above $THRESH percents' && exit 42
