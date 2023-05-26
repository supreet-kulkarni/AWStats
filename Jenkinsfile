pipeline {
    agent any

    stages {
        stage('Remove previous version') {
            steps {
                sshagent(['ubuntu-key']) {
                sh '''#!/bin/bash
                ssh -o StrictHostKeyChecking=no ubuntu@13.233.94.219 <<EOF 
                sudo su
                cd /home/ubuntu
                rm -r AWStats
                rm -r AWStats-7.9.tar.gz
                rm -r icon
                cd /usr/lib/cgi-bin
                rm -r awstat
EOF
                '''
               
                }
            }
        }
        stage('Checkout Updated code') {
            steps {
                sshagent(['ubuntu-key']) {
                sh "ssh -o StrictHostKeyChecking=no ubuntu@13.233.94.219 'sudo su; cd /home/ubuntu; git clone https://github.com/supreet-kulkarni/AWStats.git'"
                }
            }
        }
        stage('Awstatas setup') {
            steps {
                sshagent(['ubuntu-key']) {
                 sh '''#!/bin/bash 
                 ssh -o StrictHostKeyChecking=no ubuntu@13.233.94.219 <<EOF
                 sudo su
                 cd /home/ubuntu
                 tar cvzf AWStats-7.9.tar.gz AWStats
                 tar xvzf  AWStats-7.9.tar.gz
                 cd /home/ubuntu/AWStats/wwwroot/
                 cp -r icon /var/www/html/
                 chown www-data:www-data -R /var/www/html/icon/
                 a2enmod cgi
                 service apache2 restart   
                 mv cgi-bin awstat
                 chown www-data:www-data -R awstat
                 mv awstat /usr/lib/cgi-bin
EOF
            '''
                  
               }
            }
        }
        stage('Configure AWStats') {
            steps {
                sshagent(['ubuntu-key']) {
                sh '''#!/bin/bash 
                ssh -o StrictHostKeyChecking=no ubuntu@13.233.94.219 <<EOF
                sudo su
                cd /usr/lib/cgi-bin/awstat
                     cp awstats.model.conf awstats.linux.conf
                     sed -i 's|LogFile="/var/log/httpd/mylog.log"|LogFile=" /var/log/apache2/access.log"|' awstats.linux.conf
                     sed -i 's|SiteDomain=""|SiteDomain="test.com" |' awstats.linux.conf
                     sed -i 's|AllowToUpdateStatsFromBrowser=0|AllowToUpdateStatsFromBrowser=1|' awstats.linux.conf
                     cd
                     /usr/bin/perl /usr/lib/cgi-bin/awstat/awstats.pl -config=linux -update
EOF
            '''
              }
            }
        }
         
    }
}
