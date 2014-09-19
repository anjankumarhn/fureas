 OmniAuth.config.logger = Rails.logger

 Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '650969271665795', '04fb31fab15b7776e16e6d95658c0e3c'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '456108560195-vifkp7e40uj7jb7bsfc3qh2gbrg34k21.apps.googleusercontent.com', 'Rx3tyFGespZIX0C0yCSQaxI_'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :linkedin, '75s6oacsv6s9jz', 'BfKMKSuNBObthgue'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :twitter, 'JKpzQ36vGmLuTKjuLFoXLFUP0', 'Dpo6ZMyw4wv0pNrwgoO4lOhGOe4D8sB0p1v64S7LayEdgTi7x8'
end