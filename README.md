# oss-nexus-parent
Maven 中央仓库上传父类

# 功能点

- 证书
- 开发者
- 上传配置文件

# 使用方法

1. 添加 POM 依赖

```xml
<parent>
     <groupId>club.gclmit</groupId>
     <artifactId>oss-nexus-parent</artifactId>
     <version>1.0.1</version>
</parent>
```

2. 执行下面的指令

```shell script
mvn clean deploy -P sonatype-oss-release
```