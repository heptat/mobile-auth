require 'rack'

class SignatureMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "signature_password"
    # p env['params']

    valid = false
    # TODO check signature
    # get the params from env['auth_params']
    # at this point the env['auth_params'] must include the consumer_key
    # generate signature on server and compare with the signature sent by the
    # client

    # if valid
    #   status, headers, bodies = @app.call(env)
    # else
    #   status = 403
    #   headers = {"Content-Type" => "application/json"}
    #   response = {
    #     status: "SIGNATURE FAILURE",
    #     message: "Who are you?"
    #   }
    #   bodies = [response.to_json]
    # end
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
