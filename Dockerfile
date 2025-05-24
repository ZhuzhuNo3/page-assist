FROM node:20.11

# 安装必要的系统依赖
RUN apt-get update && apt-get install -y \
    git \
    python3 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

COPY package*.json .

# 安装依赖
RUN npm install -g bun

# 暴露开发服务器端口
EXPOSE 3000

CMD ["sleep", "infinity"] 
