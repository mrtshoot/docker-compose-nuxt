# Dockerize Nuxt
with this repo you can dockerize nuxt environment.

### Step1
clone this repo on /opt directory
```
cd /opt;git clone http://git.mobtaker.local/mobtaker-team/nuxt-dockerize.git <PROJECT_NAME>;cd <PROJECT_NAME>
```

### Step2
change configuration of nginx base you need.by default everything over ssl
```
vim nginx/conf.d/app.ssl.conf
vim nginx/conf.d/upstream.conf
```

### Step3
put your ssl certificate on nginx/ssl

### Step4
change your repository if you need change it to your private registry with following command
```
sed -i 's/remotehub.etod.me/<YOUR_PRIVATE_REGISTRY_URL>/g' Dockerfile docker-compose.yml
```

### Step5
Up and runnig 
```
docker-compose up -d --build
```

## Author
Mrtshoot hosi.ghorbani@gmail.com
