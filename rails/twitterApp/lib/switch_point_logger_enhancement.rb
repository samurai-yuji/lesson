class SwitchPointLoggerEnhancement < Arproxy::Base
  def execute(sql, name = nil)
    #proxy = SwitchPoint::ProxyRepository.checkout(:user)
    #mode = proxy.mode
    database_config = self.proxy_chain.connection.instance_variable_get(:@config)
    name = "#{name} [#{database_config[:host]}]"
    super(sql, name)
  end
end
