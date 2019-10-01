#!/bin/sh
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/hudson.plugins.sonar.SonarGlobalConfiguration.xml
wget https://raw.githubusercontent.com/Dimss/kbit-devops/master/org.quality.gates.jenkins.plugin.GlobalConfig.xml

exec "$@"