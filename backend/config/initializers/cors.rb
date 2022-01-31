Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    allow do
      origins "localhost:3000" # Nuxt側はポート番号3000で作るので「localhost:3000」を指定

      resource "*",
        headers: :any,
        expose: ["access-token", "expiry", "token-type", "uid", "client"], # 追記
    end
end
