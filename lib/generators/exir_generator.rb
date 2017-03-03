class ExirRailtie < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__))
  def copy_initializer
    copy_file "exir.rb", "config/initializers/exir.rb"
  end
end
