# cf [[https://gemini.google.com/app/dd771b54c057de71][Host HTML Pages Using GitHub Pages]]
prereq:
	sudo apt install gh

USERNAME=malcook
REPONAME=Cybersecurity_Extra_Topics
repo:
	gh auth login
	gh repo create ${REPONAME}  --public --source=. --remote=origin --push

o:
#	git remote add origin https://github.com/${USERNAME}/${REPONAME}.git
	git remote set-url origin git@github.com:${USERNAME}/${REPONAME}.git
p:
	git push -u origin main


changes:
#Updates: Whenever you edit your HTML files, simply run:
	git add .
	git commit -m "Update page content"
	git push

where:
	gh run list
