#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install java-17-amazon-corretto -y
java -version

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
curl -o /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
  rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
yum install jenkins -y

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins
systemctl status jenkins
