#!/usr/bin/env ruby

# file: botbase_drb_server.rb


require 'drb'
require 'botbase'


class BotBaseDRbServer

  def initialize(host: 'localhost', port: '60600', config: '', 
                 notifier: nil, debug: false)

    @host, @port = host, port
    @bot = BotBase.new(config, notifier: notifier, debug: debug)


  end

  def start()

    DRb.start_service "druby://#{@host}:#{@port}", @bot
    DRb.thread.join

  end

end