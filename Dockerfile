FROM ccr.ccs.tencentyun.com/tcb_public/strapi_base:12-alpine:12-alpine

WORKDIR /srv/app

# apk 加速
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk add mysql-client
COPY . .

RUN npm config set registry http://mirrors.cloud.tencent.com/npm/
RUN npm install tbify --global
RUN tnpm install

RUN npm run build

EXPOSE 1337

# 创建完成数据库可以删除下面的两行代码
# 给予运行权限
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
# end

# production 模式：CMD ["strapi", "start"]
CMD ["npm", "run", "develop"]


