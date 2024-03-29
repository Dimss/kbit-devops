#!/bin/sh
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/jenkins-init/hudson.plugins.sonar.SonarGlobalConfiguration.xml
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/jenkins-init/org.quality.gates.jenkins.plugin.GlobalConfig.xml
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/jenkins-init/io.fabric8.jenkins.openshiftsync.GlobalPluginConfiguration.xml
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/jenkins-init/scriptApproval.xml
sed -i "s|__SONAR_UI_URL__|$SONAR_UI_URL|g" hudson.plugins.sonar.SonarGlobalConfiguration.xml
sed -i "s|__SONAR_UI_URL__|$SONAR_UI_URL|g" org.quality.gates.jenkins.plugin.GlobalConfig.xml
sed -i "s|__BC_SYNC_TARGET_NS__|$BC_SYNC_TARGET_NS|g" io.fabric8.jenkins.openshiftsync.GlobalPluginConfiguration.xml
exec "$@"