# 使用官方 Python 镜像
FROM python:3.9-slim

# 设置容器内的工作目录
WORKDIR /app

# 复制 requirements.txt 文件并安装依赖
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# 复制应用的其他文件
COPY . .

# 暴露 FastAPI 应用运行的端口
EXPOSE 8080

# 使用 Uvicorn 运行 FastAPI 应用
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
