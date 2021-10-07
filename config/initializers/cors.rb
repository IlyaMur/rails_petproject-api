Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/todos',
             headers: :any,
             methods: %i[get post put patch delete options head]
    resource '/todos',
             headers: :any,
             methods: %i[get post put patch delete options head]
    resource '/todos/:id',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end
