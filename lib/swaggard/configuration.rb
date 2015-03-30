module Swaggard

  # Configuration for Swagger Yard, use like:
  #
  #   Swaggard.configure do |config|
  #     config.api_version          = '0.1'
  #     config.doc_base_path        = 'http://swagger.example.com/doc'
  #     config.api_base_path        = 'http://swagger.example.com/api'
  #     config.authentication_type  = 'header'
  #     config.authentication_key   = 'X-AUTHORIZATION'
  #     config.authentication_value = 'you-secret-key'
  #   end
  class Configuration

    attr_accessor :doc_base_path, :api_base_path, :controllers_path, :models_path, :routes

    attr_writer :swagger_version, :api_version, :api_path, :api_formats, :title, :description,
                :tos, :contact, :host, :authentication_type, :authentication_key,
                :authentication_value

    def swagger_version
      @swagger_version ||= '2.0'
    end

    def api_version
      @api_version ||= '0.1'
    end

    def api_path
      @api_path ||= ''
    end

    def api_formats
      @api_formats ||= [:xml, :json]
    end

    def host
      @host ||= ''
    end

    def schemes
      @schemes ||= [:http]
    end

    def title
      @title ||= ''
    end

    def description
      @description ||= ''
    end

    def tos
      @tos ||= ''
    end

    def contact
      @contact ||= ''
    end

    def license_name
      @license_name ||= ''
    end

    def license_url
      @license_url ||= ''
    end

    def authentication_type
      @authentication_type ||= 'query'
    end

    def authentication_key
      @authentication_key ||= 'api_key'
    end

    def authentication_value
      @authentication_value ||= ''
    end

  end
end