OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "349666308472223", "15cc9defeb4a0b5931863f0b13389727"
end