windows_task 'Chef-Client' do
  command 'cmd /c "C:\\opscode\\chef\\embedded\bin\\ruby.exe C:\\opscode\\chef\\bin\\chef-client -L C:\\chef\\chef-client.log -c C:\\chef\\client.rb"'
  run_level :highest
  frequency :daily
  start_time '03:00'
  action :create
  random_delay '45'
end