// build step -> execute shell

sudo apt-get install nodejs npm -y
sudo npm install
sudo nohup npm start >/dev/null 2>&1 &
------------------------------------------------------



//to check the port
sudo lsof -i :3000
//to kill it
sudo kill -9 <PID>


// runs in foreground pipeline is not possible if we use it dont use if above one not works means instead of this sudo nohup npm start >/dev/null 2>&1 & use below command (optional)
sudo npm start


//
sudo npm install -g pm2
cd /var/lib/jenkins/workspace/lab_node
npm install

# Start app with PM2
pm2 start index.js --name simple-node-app

# Save the process list so it restarts automatically
pm2 save
