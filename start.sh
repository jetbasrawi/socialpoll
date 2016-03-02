#!/bin/bash

osascript -e 'tell app "Terminal" 
	do script "~/Projects/go/src/socialpoll/mongod.sh start" 
end tell'

./nsqstart.sh

osascript -e 'tell app "Terminal" 
	do script "~/Projects/go/src/socialpoll/start_twittervotes.sh" 
end tell'

osascript -e 'tell app "Terminal" 
	do script "~/Projects/go/src/socialpoll/start_vote_counter.sh" 
end tell'







