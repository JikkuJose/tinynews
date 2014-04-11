module TinyNews

  def sources_from_home
    f = open(File.expand_path('~/.tinynews.yml')).read
    YAML::load( f )
  end

end
