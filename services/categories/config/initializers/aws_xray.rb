Rails.application.config.xray = {
  name: 'categories',
  patch: %I[net_http],
  active_record: true
}
