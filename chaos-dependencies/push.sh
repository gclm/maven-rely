#!/usr/bin/env bash

version=$(mvn -q -Dexec.executable="echo" -Dexec.args='${project.version}' --non-recursive exec:exec)
date=$(date "+%Y-%m-%d %H:%M:%S")

echo "上传代码到 github"
git add .
git commit -m "$date 发布新版本 $version"
git push

echo "发布到 华为云"
mvn clean deploy -P huawei-oss-release

echo "发布到 sonatype"
mvn clean deploy -P sonatype-oss-release

echo "打开 sonatype: https://oss.sonatype.org/"