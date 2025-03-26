# ベースイメージとして Node.js を使用
FROM node:20

# 作業ディレクトリを設定
WORKDIR /app

# package.json と package-lock.json をコピー
COPY ./package.json ./package-lock.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY ./ ./

# 開発サーバーを起動
CMD ["npm", "run", "dev"]