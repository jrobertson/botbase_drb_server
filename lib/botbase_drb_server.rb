#!/usr/bin/env ruby

# file: botbase_drb_server.rb


require 'drb'
require 'botbase'


class BotBaseDRbServer

  def initialize(host: 'localhost', port: '60600', config: '', 
                 notifier: nil, log: nil)

    log.info 'BotBaseDRbServer/initialize: active' if log
    
    @host, @port, @log = host, port, log
    @bot = BotBase.new(config, notifier: notifier, log: log)
    
    log.info 'BotBaseDRbServer/initialize: completed' if log

  end

  def start()

    @log.info 'BotBaseDRbServer/start: active' if @log
    DRb.start_service "druby://#{@host}:#{@port}", @bot
    DRb.thread.join

  end

end