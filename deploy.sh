#!/bin/bash

if [ ${TRAVIS_BRANCH} = "master" ]; then 
	MESSAGE=$(git log --format=%B -n 1 $TRAVIS_COMMIT)
	git clone git://${GH_REPO}
	cp -R ${FILES} ${REPO}
	cd ${REPO}
	git remote
	git config user.email ${EMAIL}
	git config user.name ${USER}
	git add .
	git commit -m $TRAVIS_BUILD_NUMBER
	git push "https://${GH_TOKEN}@${GH_REPO}" master > /dev/null 2>&1
fi
