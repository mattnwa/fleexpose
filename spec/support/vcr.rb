require 'vcr'
VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = {
    match_requests_on: [:method, :uri]
  }

  # Make sure to add private keys here when adding additional vcr cassettes.
  c.filter_sensitive_data('Fleetio API Key') { FleetioAdapter.new.send(:api_key) }
  c.filter_sensitive_data('Account Token') { FleetioAdapter.new.send(:account_token) }
end
