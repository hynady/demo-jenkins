# Chọn image Node.js chính thức
FROM node:14

# Đặt thư mục làm việc
WORKDIR /usr/src/app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép mã nguồn vào container
COPY . .

# Mở cổng cho ứng dụng
EXPOSE 3000

# Lệnh để chạy ứng dụng
CMD ["node", "server.js"]
