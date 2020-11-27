<p align="center">
  <img height="100px" src="./logo.svg" />
</p>

# [Strapi](https://github.com/strapi/strapi)

Strapi 是一个基于 Node.js 构建的，开源的 Headless CMS，支持快速构建自定义的 API。

## 部署

1. 由于 Strapi 项目的特殊性，部署时，将会从源码进行构建，所消耗的时间会较长，请耐心等待。
2. 因为 Strapi 在 `production` 模式下无法新建内容类型，所以此项目中部署时默认为 `development` 模式，你可以 fork 此项目，并修改 Dockerfile 中的 `NODE_ENV development` 为 `NODE_ENV production`，以获取更好的性能。
3. 请更换项目中 `config/server.js` 中的 `ADMIN_JWT_SECRET`

本项目基于开源项目 [CloudBase Framework](https://github.com/Tencent/cloudbase-framework) 开发部署，支持一键云端部署

[![](https://main.qcloudimg.com/raw/67f5a389f1ac6f3b4d04c7256438e44f.svg)](https://console.cloud.tencent.com/tcb/env/index?action=CreateAndDeployCloudBaseProject&tdl_anchor=github&tdl_site=0&appUrl=https://github.com/TencentCloudBase-Marketplace/strapi)

### 配置

- `DATABASE_HOST`：数据库地址
- `DATABASE_PORT`：数据库端口
- `DATABASE_NAME`：数据库名称
- `DATABASE_USERNAME`：数据库用户名
- `DATABASE_PASSWORD`：数据库密码

### 依赖

- CynosDB：使用 CynosDB 存储数据
- CFS：使用 CFS 持久化配置

## 注意事项

1. 部署时，需要将服务路径设置为根路径 `/`
