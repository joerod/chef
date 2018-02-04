
windows_task 'Reboot' do
  
  command 'powershell restart-computer -force'
  run_level :highest
  frequency :monthly
  start_time '03:00'
  day 1
end