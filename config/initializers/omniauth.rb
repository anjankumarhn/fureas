 OmniAuth.config.logger = Rails.logger

 Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '650969271665795', '04fb31fab15b7776e16e6d95658c0e3c'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '309258024981-gob804blfhlgicqosbdvr8vus03h87aj.apps.googleusercontent.com', '14U9FX91nBpGIEjrQhkB68qH'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :linkedin, '75s6oacsv6s9jz', 'BfKMKSuNBObthgue'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :twitter, 'JKpzQ36vGmLuTKjuLFoXLFUP0', 'Dpo6ZMyw4wv0pNrwgoO4lOhGOe4D8sB0p1v64S7LayEdgTi7x8'
end