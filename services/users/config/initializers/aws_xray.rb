Rails.application.config.xray = {
  name: 'users',
  patch: %I[net_http],
  active_record: true
}
