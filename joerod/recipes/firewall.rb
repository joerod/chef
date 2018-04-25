# adds windows fw exemption
[{name: 'RemoteDesktop-UserMode-In-TCP', displayname: 'Remote Desktop - User Mode (TCP-In)' },
 {name: 'RemoteDesktop-UserMode-In-UDP', displayname: 'Remote Desktop - User Mode (UDP-In)' }].each do |fwrule|
  dsc_script 'Set RDP Firewall Rule' do
    code <<-EOH
        Enable-PSRemoting -Force
        xFirewall Firewall
        {
            Name                  = "#{fwrule[:name]}"
            DisplayName           = "#{fwrule[:displayname]}"
            Enabled               = 'True'
        }
        EOH
    imports 'xNetworking'
  end
end

dsc_script 'Enable Remote Desktop' do
    code <<-EOH
        Registry 'Enable Remote Desktop'
        {
            Key         = "HKLM:\\System\\CurrentControlSet\\Control\\Terminal Server"
            ValueName   = "fDenyTSConnections"
            ValueData   = "0"
            ValueType   = "DWORD"
        }
    EOH
end