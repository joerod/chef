
windows_task 'Reboot' do
  
  command 'powershell restart-computer -force'
  run_level :highest
  frequency :monthly
  start_time '03:00'
  day 1
end

shell_out("powershell.exe -NoLogo -NonInteractive -NoProfile -command Get-date").stdout
shell_out("powershell.exe -NoLogo -NonInteractive -NoProfile -command $PSVersionTable").stdout