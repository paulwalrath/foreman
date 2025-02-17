module ProxyStatus
  CONNECTION_ERRORS = [Errno::EINVAL, Errno::ECONNRESET, EOFError, Timeout::Error, Errno::ENOENT, ProxyAPI::ProxyException,
                       Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError]

  def self.status_registry
    @status_registry ||= Set.new
  end

  def self.find_status_by_humanized_name(name)
    status_registry.find { |s| s.humanized_name == name }
  end
end
