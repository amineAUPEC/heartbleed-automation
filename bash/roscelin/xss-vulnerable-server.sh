# cd heartbleed-automation/bash/roscelin && sudo chmod +x ./xss-vulnerable-server.sh && sudo chmod +x ./xss-vulnerable-server.sh
sudo apt-get update -y && sudo apt-get install -y git 

git clone https://github.com/amineAUPEC/heartbleed-automation.git

cd heartbleed-automation/bash
# sudo chmod +x ./install-docker.sh && sudo ./install-docker.sh && sudo apt-get install -y docker-compose
sudo chmod +x ./install-docker.sh && sudo ./install-docker.sh 
docker run --name vulnbank -p 80:80 -d vulnbank/vulnbank

# git clone https://github.com/vulnbank/vulnbank.git && cd vulnbank && sudo docker build . -f Dockerfile