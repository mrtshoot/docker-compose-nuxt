# Dockerize Nuxt
with this repo you can dockerize nuxt environment.

### Step1
clone this repo on /opt directory
```
cd /opt;git clone http://git.mobtaker.local/mobtaker/docker-compose-nuxt.git <PROJECT_NAME>;cd <PROJECT_NAME>
```

### Step2
change project template such as your need
```
sed -i s/yourhostname1/ENTER_HERE/g .gitlab-ci.yml
sed -i s/yourhostname2/ENTER_HERE/g .gitlab-ci.yml
sed -i s/staging_env_url/ENTER_HERE/g .gitlab-ci.yml
sed -i s/production_env_url/ENTER_HERE/g .gitlab-ci.yml
sed -i s/your_servername/ENTER_HERE/g ./nginx/conf.d/app.ssl.conf
sed -i s/projectname/ENTER_HERE/g .gitlab-ci.yml Dockerfile docker-compose.yml ./nginx/conf.d/app.ssl.conf ./nginx/conf.d/upstream.conf
sed -i 's/localhub.etod.me/<YOUR_PRIVATE_REGISTRY_URL>/g' Dockerfile docker-compose.yml
```

### Step3(Optional)
change configuration of nginx base you need.by default everything over simple http.if you have ssl certificates you need configure it
```
vim nginx/conf.d/app.ssl.conf
vim nginx/conf.d/upstream.conf
```
and put your ssl certificate on nginx/ssl

### Step4
Clone project source code on your host(copy server ssh pub key on git)
```
git clone --branch <YOUR_Branch> <Repo_URL> projectname
```
### Step5
(Install gitlabrunner and run it on your server)["#"]

### Step6
Copy gitlabci file to project root directory
```
cp .gitlab-ci.yml.example ./projectname/.gitlab-ci.yml
```

### Step7 
Add your staging and production environment on gitlab > project > operations > environment.

### Step8
Up and runnig 
```
docker-compose up -d
```

## Author
Mrtshoot hosi.ghorbani@gmail.com
