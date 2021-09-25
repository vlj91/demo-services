Rails.application.config.xray = {
  name: 'tasks',
  patch: %I[net_http],
  active_record: true
}
