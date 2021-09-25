Rails.application.config.xray = {
  name: 'events',
  patch: %I[net_http],
  active_record: true
}
