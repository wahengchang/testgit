echo 'Going to generate pre-push file ... '
echo '#!/bin/sh
 
 ## A script to generate different config.json by different branch
 
 
 
 branch=`git rev-parse --abbrev-ref HEAD`
 
 
 echo "Checking deployment rules for project:$PROJECT, branch: $branch"
 
 if [ "$branch" = "master" ] ; then
 		echo "Master branch: creating config.json"
 		
 				rm config.json
 						cp config-master.json config.json
 						
 								git add config.json
 										# git commit --amend -C HEAD --no-verify
 												git commit --amend -C HEAD
 												
 												elif [ "$branch" = "dev" ] ; then 		
 														echo "Dev branch: creating config.json"
 														
 																rm config.json
 																		cp config-dev.json config.json
 																		
 																				git add config.json
 																						git commit --amend -C HEAD
 																						
 																						elif [ "$branch" = "test" ] ; then
 																								echo "Test branch: creating config.json"
 																								
 																										rm config.json
 																												cp config-test.json config.json
 																												
 																														git add config.json
 																																# git commit --amend -C HEAD
 																																		git commit -C HEAD
 																																		
 																																		else
 																																			echo "Not in any branch "
 																																			fi
 																																			
 																																			exit'> .git/hooks/pre-push
 																																			
echo 'Setting premission for pre-push file ... '
exec chmod +x .git/hooks/pre-push

