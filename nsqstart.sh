#!/bin/bash
osascript -e 'tell app "Terminal" 
	do script "nsqlookupd" 
end tell'

osascript -e 'tell app "Terminal" 
	do script "nsqd --lookupd-tcp-address=127.0.0.1:4160 -tcp-address=127.0.0.1:4150 -broadcast-address=127.0.0.1" 
end tell'

osascript -e 'tell app "Terminal" 
	do script "nsqadmin --lookupd-http-address=127.0.0.1:4161" 
end tell'

osascript -e 'tell app "Terminal" 
	do script "nsq_tail --topic="votes" --lookupd-http-address=localhost:4161" 
end tell'