echo " " > /tmp/i3lock_log.txt ##clear log

_date()
{
    date=`grep 'pam_unix(i3lock:auth): authentication failure' /tmp/i3lock_log.txt | awk {'print $3'} | tail -n 1`
}
_date

pht="0"

while :
do
    if pidof i3lock
    then
        journalctl -xn | tail -n 1 > /tmp/i3lock_log.txt

        if ( grep 'pam_unix(i3lock:auth): authentication failure' /tmp/i3lock_log.txt )
        then
            if [[ $pht == "0" ]]
            then
                echo -e "$(fswebcam `date +"%T"`.jpg)" ##take a photo
                pht="1"
            fi
        fi
    fi
    sleep 3
  done
