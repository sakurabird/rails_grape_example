class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json

  helpers do
    def dummy_code
      { code: 1 }
    end

    def err401
      error!('401 Unauthorized', 401)
    end
  end

  resource :dummy_api do

    get :status do
      dummy_code
    end

    get :secret do
      err401
    end
  end
end
