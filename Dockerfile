# Gunakan image Node.js versi 16
FROM node:16

# Set direktori kerja dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode aplikasi ke container
COPY . .

# Expose port 3000 (port di mana server akan berjalan)
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["node", "server.js"]
