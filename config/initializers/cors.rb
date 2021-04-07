Rails.application.config.middleware.insert_before 0, Rack::Cors do
    #For local
    allow do
      origins "http://127.0.0.1:3000"
      resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
    #For the web
    allow do
      origins "*"
      resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: false
    end

end
