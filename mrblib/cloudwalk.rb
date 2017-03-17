def __main__(argv)
  Util::ENV.load
  Cloudwalk::Config.load
  case argv[1]
  when "version"
    puts "v#{Cloudwalk::VERSION}"
  when "new"
    Cloudwalk::Setup.run(argv[2])
  when "help"
    Cloudwalk::Help.run
  when "compile"
    Cloudwalk::Mruby.compile(*argv[2..-1])
  when "run"
    Cloudwalk::Mruby.run(*argv[2..-1])
  when "console"
    Cloudwalk::Mruby.console
  when "about"
    Cloudwalk::About.run
  when "login"
    Cloudwalk::Login.run
  when "logout"
    Cloudwalk::Login.run
  else
    Cloudwalk::Help.run
  end
end
