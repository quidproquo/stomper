require 'ostruct'
require 'pathname'
require 'yaml'

module Stomper
  autoload :Client, 'stomper/client'

  @@config = nil

  def self.config(new_config = nil)
    @@config ||= load_config
    yield(@@config) if block_given?
    @@config
  end

  def self.get_config
    self.config.marshal_dump
  end

  protected

  def self.config_dir
    return Rails.root.join('config') if defined?(Rails)
    Pathname.new('config')
  end

  def self.config_env
    return Rails.env if defined?(Rails)
    'default'
  end

  def self.load_config
    OpenStruct.new(YAML.load_file(config_dir.join('stomper.yml'))[config_env])
  end

  def self.set_config(new_config)
    new_config.each{|k,v| @@config.send(:"#{k}=", v) if !v.nil?}
  end

end # Module
