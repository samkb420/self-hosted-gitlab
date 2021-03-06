sudo docker run --detach \
  --hostname git-uat.oloosirikonschool.sc.ke \
  --publish 443:443 --publish 80:80 --publish 23:23 \
  --name gitlab-uat \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ee:latest
