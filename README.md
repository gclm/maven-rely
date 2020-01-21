# oss-nexus-parent
nexus/Maven 中央仓库上传父类

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
     <version>3.0.0</version>
</parent>
```

2. 执行下面的指令

```shell script
# 中央仓库
mvn clean deploy -P sonatype-oss-release
# 华为云 Nexus
mvn clean deploy -P huaweicloud-oss-release
```

# 版本日志

- 2019.08.16 创建仓库发布 1.0.0-SNAPSHOT
- 2019.11.06 开始创建中央仓库 1.x 和 nexus 2.x 分支
- 2019.12.03 优化代码更新文档
- 2020.01.03 更改 nexus 为华为云的。发布最新的使用文档
- 2020.01.21 合并中央仓库和 nexus 仓库，发布3.0.0 版本
