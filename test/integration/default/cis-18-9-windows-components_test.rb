#
# encoding: utf-8

# Inspec test for recipe cb_cis_windows_2016::cis-18-9-windows-components

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# 18.9.4.1 (L2) Ensure Allow a Windows app to share application data between users is set to Disabled
# control '18.9.4.1' do
#   impact 1.0
#   title '(L2) Ensure Allow a Windows app to share application data between users is set to Disabled'
#   desc '(L2) Ensure Allow a Windows app to share application data between users is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.4.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\AppModel\StateManager') do
#     it { should exist }
#     it { should have_property_value('AllowSharedLocalAppData', :type_dword, 0) }
#   end
# end

# 18.9.5.1 (L2) Ensure Let Windows apps * is set to Enabled: Force Deny
# control '18.9.5.1' do
#   impact 1.0
#   title '(L2) Ensure Let Windows apps * is set to Enabled: Force Deny'
#   desc '(L2) Ensure Let Windows apps * is set to Enabled: Force Deny'
#   tag 'cis-level-2', 'cis-18.9.5.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy') do
#     it { should exist }
#     it { should have_property_value('LetAppsAccessAccountInfo', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessCalendar', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessCallHistory', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessCamera', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessContacts', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessEmail', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessLocation', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessMessaging', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessMicrophone', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessMotion', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessRadios', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessTrustedDevices', :type_dword, 2) }
#     it { should have_property_value('LetAppsSyncWithDevices', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessPhone', :type_dword, 2) }
#     it { should have_property_value('LetAppsAccessNotifications', :type_dword, 2) }
#   end
# end

# 18.9.6.1 (L1) Ensure 'Allow Microsoft accounts to be optional' is set to 'Enabled'
control '18.9.6.1' do
  impact 1.0
  title 'Ensure Allow Microsoft accounts to be optional is set to Enabled'
  desc 'Ensure Allow Microsoft accounts to be optional is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.6.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System') do
    it { should exist }
    it { should have_property_value('MSAOptional', :type_dword, 1) }
  end
end

# 18.9.6.2 (L2) Ensure Block launching Windows Store apps with Windows Runtime API access from hosted content. is set to Enabled
# control '18.9.6.2' do
#   impact 1.0
#   title '(L2) Ensure Block launching Windows Store apps with Windows Runtime API access from hosted content. is set to Enabled'
#   desc '(L2) Ensure Block launching Windows Store apps with Windows Runtime API access from hosted content. is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.6.2'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System') do
#     it { should exist }
#     it { should have_property_value('BlockHostedAppAccessWinRT', :type_dword, 1) }
#   end
# end

# 18.9.8.1 (L1) Ensure 'Disallow Autoplay for non-volume devices' is set to 'Enabled'
control '18.9.8.1' do
  impact 1.0
  title 'Ensure Disallow Autoplay for non-volume devices is set to Enabled'
  desc 'Ensure Disallow Autoplay for non-volume devices is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.8.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer') do
    it { should exist }
    it { should have_property_value('NoAutoplayfornonVolume', :type_dword, 1) }
  end
end

# 18.9.8.2 (L1) Ensure 'Set the default behavior for AutoRun' is set to 'Enabled: Do not execute any autorun commands'
control '18.9.8.2' do
  impact 1.0
  title 'Ensure Set the default behavior for AutoRun is set to Enabled: Do not execute any autorun commands'
  desc 'Ensure Set the default behavior for AutoRun is set to Enabled: Do not execute any autorun commands'
  tag 'cis-level-1', 'cis-18.9.8.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') do
    it { should exist }
    it { should have_property_value('NoAutorun', :type_dword, 1) }
  end
end

# 18.9.8.3 (L1) Ensure 'Turn off Autoplay' is set to 'Enabled: All drives'
control '18.9.8.3' do
  impact 1.0
  title 'Ensure Turn off Autoplay is set to Enabled: All drives'
  desc 'Ensure Turn off Autoplay is set to Enabled: All drives'
  tag 'cis-level-1', 'cis-18.9.8.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') do
    it { should exist }
    it { should have_property_value('NoDriveTypeAutoRun', :type_dword, 255) }
  end
end

# 18.9.10.1.1 (L1) Ensure 'Use enhanced anti-spoofing when available' is set to 'Enabled'
control '18.9.10.1.1' do
  impact 1.0
  title 'Ensure Use enhanced anti-spoofing when available is set to Enabled'
  desc 'Ensure Use enhanced anti-spoofing when available is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.10.1.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Biometrics\FacialFeatures') do
    it { should exist }
    it { should have_property_value('EnhancedAntiSpoofing', :type_dword, 1) }
  end
end

# 18.9.12.1 (L2) Ensure Allow Use of Camera is set to Disabled
# control '18.9.12.1' do
#   impact 1.0
#   title '(L2) Ensure Allow Use of Camera is set to Disabled'
#   desc '(L2) Ensure Allow Use of Camera is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.12.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Camera') do
#     it { should exist }
#     it { should have_property_value('AllowCamera', :type_dword, 0) }
#   end
# end

# 18.9.13.1 (L1) Ensure 'Turn off Microsoft consumer experiences' is set to 'Enabled'
control '18.9.13.1' do
  impact 1.0
  title 'Ensure Turn off Microsoft consumer experiences is set to Enabled'
  desc 'Ensure Turn off Microsoft consumer experiences is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.13.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent') do
    it { should exist }
    it { should have_property_value('DisableWindowsConsumerFeatures', :type_dword, 1) }
  end
end

# 18.9.14.1 (L1) Ensure 'Require pin for pairing' is set to 'Enabled'
control '18.9.14.1' do
  impact 1.0
  title 'Ensure Require pin for pairing is set to Enabled'
  desc 'Ensure Require pin for pairing is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.14.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Connect') do
    it { should exist }
    it { should have_property_value('RequirePinForPairing', :type_dword, 1) }
  end
end

# 18.9.15.1 (L1) Ensure 'Do not display the password reveal button' is set to 'Enabled'
control '18.9.15.1' do
  impact 1.0
  title 'Ensure Do not display the password reveal button is set to Enabled'
  desc 'Ensure Do not display the password reveal button is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.15.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CredUI') do
    it { should exist }
    it { should have_property_value('DisablePasswordReveal', :type_dword, 1) }
  end
end

# 18.9.15.2 (L1) Ensure 'Enumerate administrator accounts on elevation' is set to 'Disabled'
control '18.9.15.2' do
  impact 1.0
  title 'Ensure Enumerate administrator accounts on elevation is set to Disabled'
  desc 'Ensure Enumerate administrator accounts on elevation is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.15.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\CredUI') do
    it { should exist }
    it { should have_property_value('EnumerateAdministrators', :type_dword, 0) }
  end
end

# 18.9.16.1 (L1) Ensure 'Allow Telemetry' is set to 'Enabled: 0 - Security [Enterprise Only]'
control '18.9.16.1' do
  impact 1.0
  title 'Ensure Allow Telemetry is set to Enabled: 0 - Security [Enterprise Only]'
  desc 'Ensure Allow Telemetry is set to Enabled: 0 - Security [Enterprise Only]'
  tag 'cis-level-1', 'cis-18.9.16.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection') do
    it { should exist }
    it { should have_property_value('AllowTelemetry', :type_dword, 0) }
  end
end

# 18.9.16.2 (L1) Ensure 'Disable pre-release features or settings' is set to 'Disabled'
control '18.9.16.2' do
  impact 1.0
  title 'Ensure Disable pre-release features or settings is set to Disabled'
  desc 'Ensure Disable pre-release features or settings is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.16.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds') do
    it { should exist }
    it { should have_property_value('EnableConfigFlighting', :type_dword, 0) }
  end
end

# 18.9.16.3 (L1) Ensure 'Do not show feedback notifications' is set to 'Enabled'
control '18.9.16.3' do
  impact 1.0
  title 'Ensure Do not show feedback notifications is set to Enabled'
  desc 'Ensure Do not show feedback notifications is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.16.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection') do
    it { should exist }
    it { should have_property_value('DoNotShowFeedbackNotifications', :type_dword, 1) }
  end
end

# 18.9.16.4 (L1) Ensure 'Toggle user control over Insider builds' is set to 'Disabled'
control '18.9.16.4' do
  impact 1.0
  title 'Ensure Toggle user control over Insider builds is set to Disabled'
  desc 'Ensure Toggle user control over Insider builds is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.16.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds') do
    it { should exist }
    it { should have_property_value('AllowBuildPreview', :type_dword, 0) }
  end
end

# 18.9.26.1.1 (L1) Ensure 'Application: Control Event Log behavior when the log file reaches its maximum size' is set to 'Disabled'
control '18.9.26.1.1' do
  impact 1.0
  title 'Ensure Application: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  desc 'Ensure Application: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.26.1.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application') do
    it { should exist }
    it { should have_property_value('Retention', :type_string, '0') }
  end
end

# 18.9.26.1.2 (L1)  Ensure 'Application: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater'
control '18.9.26.1.2' do
  impact 1.0
  title ' Ensure Application: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  desc ' Ensure Application: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  tag 'cis-level-1', 'cis-18.9.26.1.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application') do
    it { should exist }
    it { should have_property_value('MaxSize', :type_dword, 33_000) }
  end
end

# 18.9.26.2.1 (L1) Ensure 'Security: Control Event Log behavior when the log file reaches its maximum size' is set to 'Disabled'
control '18.9.26.2.1' do
  impact 1.0
  title 'Ensure Security: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  desc 'Ensure Security: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.26.2.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security') do
    it { should exist }
    it { should have_property_value('Retention', :type_string, '0') }
  end
end

# 18.9.26.2.2 (L1)  Ensure 'Security: Specify the maximum log file size (KB)' is set to 'Enabled: 196,608 or greater'
control '18.9.26.2.2' do
  impact 1.0
  title ' Ensure Security: Specify the maximum log file size (KB) is set to Enabled: 196,608 or greater'
  desc ' Ensure Security: Specify the maximum log file size (KB) is set to Enabled: 196,608 or greater'
  tag 'cis-level-1', 'cis-18.9.26.2.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security') do
    it { should exist }
    it { should have_property_value('MaxSize', :type_dword, 33_000) }
  end
end

# 18.9.26.3.1 (L1) Ensure 'Setup: Control Event Log behavior when the log file reaches its maximum size' is set to 'Disabled'
control '18.9.26.3.1' do
  impact 1.0
  title 'Ensure Setup: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  desc 'Ensure Setup: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.26.3.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Setup') do
    it { should exist }
    it { should have_property_value('Retention', :type_string, '0') }
  end
end

# 18.9.26.3.2 (L1)  Ensure 'Setup: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater'
control '18.9.26.3.2' do
  impact 1.0
  title ' Ensure Setup: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  desc ' Ensure Setup: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  tag 'cis-level-1', 'cis-18.9.26.3.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Setup') do
    it { should exist }
    it { should have_property_value('MaxSize', :type_dword, 33_000) }
  end
end

# 18.9.26.4.1 (L1) Ensure 'System: Control Event Log behavior when the log file reaches its maximum size' is set to 'Disabled'
control '18.9.26.4.1' do
  impact 1.0
  title 'Ensure System: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  desc 'Ensure System: Control Event Log behavior when the log file reaches its maximum size is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.26.4.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\System') do
    it { should exist }
    it { should have_property_value('Retention', :type_string, '0') }
  end
end

# 18.9.26.4.2 (L1)  Ensure 'System: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater'
control '18.9.26.4.2' do
  impact 1.0
  title ' Ensure System: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  desc ' Ensure System: Specify the maximum log file size (KB) is set to Enabled: 32,768 or greater'
  tag 'cis-level-1', 'cis-18.9.26.4.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\System') do
    it { should exist }
    it { should have_property_value('MaxSize', :type_dword, 33_000) }
  end
end

# 18.9.30.2 (L1) Ensure 'Configure Windows SmartScreen' is set to 'Enabled'
control '18.9.30.2' do
  impact 1.0
  title 'Ensure Configure Windows SmartScreen is set to Enabled'
  desc 'Ensure Configure Windows SmartScreen is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.30.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System') do
    it { should exist }
    it { should have_property_value('EnableSmartScreen', :type_dword, 1) }
  end
end

# 18.9.30.3 (L1) Ensure 'Turn off Data Execution Prevention for Explorer' is set to 'Disabled'
control '18.9.30.3' do
  impact 1.0
  title 'Ensure Turn off Data Execution Prevention for Explorer is set to Disabled'
  desc 'Ensure Turn off Data Execution Prevention for Explorer is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.30.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer') do
    it { should exist }
    it { should have_property_value('NoDataExecutionPrevention', :type_dword, 0) }
  end
end

# 18.9.30.4 (L1) Ensure 'Turn off heap termination on corruption' is set to 'Disabled'
control '18.9.30.4' do
  impact 1.0
  title 'Ensure Turn off heap termination on corruption is set to Disabled'
  desc 'Ensure Turn off heap termination on corruption is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.30.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer') do
    it { should exist }
    it { should have_property_value('NoHeapTerminationOnCorruption', :type_dword, 0) }
  end
end

# 18.9.30.5 (L1) Ensure 'Turn off shell protocol protected mode' is set to 'Disabled'
control '18.9.30.5' do
  impact 1.0
  title 'Ensure Turn off shell protocol protected mode is set to Disabled'
  desc 'Ensure Turn off shell protocol protected mode is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.30.5'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') do
    it { should exist }
    it { should have_property_value('PreXPSP2ShellProtocolBehavior', :type_dword, 0) }
  end
end

# 18.9.37.2 (L2) Ensure Turn off location is set to Enabled
# control '18.9.37.2' do
#   impact 1.0
#   title '(L2) Ensure Turn off location is set to Enabled'
#   desc '(L2) Ensure Turn off location is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.37.2'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors') do
#     it { should exist }
#     it { should have_property_value('DisableLocation', :type_dword, 1) }
#   end
# end

# 18.9.41.1 (L2) Ensure Allow Extensions is set to Disabled
# control '18.9.41.1' do
#   impact 1.0
#   title '(L2) Ensure Allow Extensions is set to Disabled'
#   desc '(L2) Ensure Allow Extensions is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.41.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Extensions') do
#     it { should exist }
#     it { should have_property_value('ExtensionsEnabled', :type_dword, 0) }
#   end
# end

# 18.9.41.2 (L2) Ensure Allow InPrivate Browsing is set to Disabled
# control '18.9.41.2' do
#   impact 1.0
#   title '(L2) Ensure Allow InPrivate Browsing is set to Disabled'
#   desc '(L2) Ensure Allow InPrivate Browsing is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.41.2'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
#     it { should exist }
#     it { should have_property_value('AllowInPrivate', :type_dword, 0) }
#   end
# end

# 18.9.41.3 (L1) Ensure 'Configure cookies' is set to 'Enabled: Block only 3rd-party cookies' or higher
control '18.9.41.3' do
  impact 1.0
  title 'Ensure Configure cookies is set to Enabled: Block only 3rd-party cookies or higher'
  desc 'Ensure Configure cookies is set to Enabled: Block only 3rd-party cookies or higher'
  tag 'cis-level-1', 'cis-18.9.41.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
    it { should exist }
    it { should have_property_value('Cookies', :type_dword, 1) }
  end
end

# 18.9.41.4 (L1) Ensure 'Configure Password Manager' is set to 'Disabled'
control '18.9.41.4' do
  impact 1.0
  title 'Ensure Configure Password Manager is set to Disabled'
  desc 'Ensure Configure Password Manager is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.41.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
    it { should exist }
    it { should have_property_value('FormSuggest Passwords', :type_dword, 1) }
  end
end

# 18.9.41.5 (L2) Ensure Configure Pop-up Blocker is set to Enabled
# control '18.9.41.5' do
#   impact 1.0
#   title '(L2) Ensure Configure Pop-up Blocker is set to Enabled'
#   desc '(L2) Ensure Configure Pop-up Blocker is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.41.5'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
#     it { should exist }
#     it { should have_property_value('AllowPopups', :type_dword, 1) }
#   end
# end

# 18.9.41.6 (L1) Ensure 'Configure search suggestions in Address bar' is set to 'Disabled'
control '18.9.41.6' do
  impact 1.0
  title 'Ensure Configure search suggestions in Address bar is set to Disabled'
  desc 'Ensure Configure search suggestions in Address bar is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.41.6'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes') do
    it { should exist }
    it { should have_property_value('ShowSearchSuggestionsGlobal', :type_dword, 0) }
  end
end

# 18.9.41.7 (L1) Ensure 'Configure SmartScreen Filter' is set to 'Enabled'
control '18.9.41.7' do
  impact 1.0
  title 'Ensure Configure SmartScreen Filter is set to Enabled'
  desc 'Ensure Configure SmartScreen Filter is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.41.7'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter') do
    it { should exist }
    it { should have_property_value('EnabledV9', :type_dword, 1) }
  end
end

# 18.9.41.8 (L2) Ensure Prevent access to the about:flags page in Microsoft Edge is set to Enabled
# control '18.9.41.8' do
#   impact 1.0
#   title '(L2) Ensure Prevent access to the about:flags page in Microsoft Edge is set to Enabled'
#   desc '(L2) Ensure Prevent access to the about:flags page in Microsoft Edge is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.41.8'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
#     it { should exist }
#     it { should have_property_value('PreventAccessToAboutFlagsInMicrosoftEdge', :type_dword, 1) }
#   end
# end

# 18.9.41.9 (L2) Ensure Prevent bypassing SmartScreen prompts for files is set to Enabled
# control '18.9.41.9' do
#   impact 1.0
#   title '(L2) Ensure Prevent bypassing SmartScreen prompts for files is set to Enabled'
#   desc '(L2) Ensure Prevent bypassing SmartScreen prompts for files is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.41.9'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter') do
#     it { should exist }
#     it { should have_property_value('PreventOverrideAppRepUnknown', :type_dword, 1) }
#   end
# end

# 18.9.41.10 (L2) Ensure Prevent bypassing SmartScreen prompts for sites is set to Enabled
# control '18.9.41.10' do
#   impact 1.0
#   title '(L2) Ensure Prevent bypassing SmartScreen prompts for sites is set to Enabled'
#   desc '(L2) Ensure Prevent bypassing SmartScreen prompts for sites is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.41.10'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter') do
#     it { should exist }
#     it { should have_property_value('PreventOverride', :type_dword, 1) }
#   end
# end

# 18.9.41.11 (L2) Ensure Prevent using Localhost IP address for WebRTC is set to Enabled
# control '18.9.41.11' do
#   impact 1.0
#   title '(L2) Ensure Prevent using Localhost IP address for WebRTC is set to Enabled'
#   desc '(L2) Ensure Prevent using Localhost IP address for WebRTC is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.41.11'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main') do
#     it { should exist }
#     it { should have_property_value('HideLocalHostIP', :type_dword, 1) }
#   end
# end

# 18.9.47.1 (L1) Ensure 'Prevent the usage of OneDrive for file storage' is set to 'Enabled'
control '18.9.47.1' do
  impact 1.0
  title 'Ensure Prevent the usage of OneDrive for file storage is set to Enabled'
  desc 'Ensure Prevent the usage of OneDrive for file storage is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.47.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive') do
    it { should exist }
    it { should have_property_value('DisableFileSyncNGSC', :type_dword, 1) }
  end
end

# 18.9.52.2.2 (L1) Ensure 'Do not allow passwords to be saved' is set to 'Enabled'
control '18.9.52.2.2' do
  impact 1.0
  title 'Ensure Do not allow passwords to be saved is set to Enabled'
  desc 'Ensure Do not allow passwords to be saved is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.52.2.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('DisablePasswordSaving', :type_dword, 1) }
  end
end

# 18.9.52.3.2.1 (L2) Ensure Restrict Remote Desktop Services users to a single Remote Desktop Services session is set to Enabled
# control '18.9.52.3.2.1' do
#   impact 1.0
#   title '(L2) Ensure Restrict Remote Desktop Services users to a single Remote Desktop Services session is set to Enabled'
#   desc '(L2) Ensure Restrict Remote Desktop Services users to a single Remote Desktop Services session is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.52.3.2.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('fSingleSessionPerUser', :type_dword, 1) }
#   end
# end

# 18.9.52.3.3.1 (L2) Ensure Do not allow COM port redirection is set to Enabled
# control '18.9.52.3.3.1' do
#   impact 1.0
#   title 'Ensure Do not allow COM port redirection is set to Enabled'
#   desc 'Ensure Do not allow COM port redirection is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.52.3.3.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('fDisableCcm', :type_dword, 1) }
#   end
# end

# 18.9.52.3.3.2 (L1) Ensure 'Do not allow drive redirection' is set to 'Enabled'
control '18.9.52.3.3.2' do
  impact 1.0
  title 'Ensure Do not allow drive redirection is set to Enabled'
  desc 'Ensure Do not allow drive redirection is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.52.3.3.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('fDisableCdm', :type_dword, 1) }
  end
end

# 18.9.52.3.3.3 (L2) Ensure Do not allow LPT port redirection is set to Enabled
# control '18.9.52.3.3.3' do
#   impact 1.0
#   title '(L2) Ensure Do not allow LPT port redirection is set to Enabled'
#   desc '(L2) Ensure Do not allow LPT port redirection is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.52.3.3.3'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('fDisableLPT', :type_dword, 1) }
#   end
# end

# 18.9.52.3.3.4 (L2) Ensure Do not allow supported Plug and Play device redirection is set to Enabled
# control '18.9.52.3.3.4' do
#   impact 1.0
#   title '(L2) Ensure Do not allow supported Plug and Play device redirection is set to Enabled'
#   desc '(L2) Ensure Do not allow supported Plug and Play device redirection is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.52.3.3.4'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('fDisablePNPRedir', :type_dword, 1) }
#   end
# end

# 18.9.52.3.9.1 (L1) Ensure 'Always prompt for password upon connection' is set to 'Enabled'
control '18.9.52.3.9.1' do
  impact 1.0
  title 'Ensure Always prompt for password upon connection is set to Enabled'
  desc 'Ensure Always prompt for password upon connection is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.52.3.9.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('fPromptForPassword', :type_dword, 1) }
  end
end

# 18.9.52.3.9.2 (L1) Ensure 'Require secure RPC communication' is set to 'Enabled'
control '18.9.52.3.9.2' do
  impact 1.0
  title 'Ensure Require secure RPC communication is set to Enabled'
  desc 'Ensure Require secure RPC communication is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.52.3.9.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('fEncryptRPCTraffic', :type_dword, 1) }
  end
end

# 18.9.52.3.9.3 (L1) Ensure 'Set client connection encryption level' is set to 'Enabled: High Level'
control '18.9.52.3.9.3' do
  impact 1.0
  title 'Ensure Set client connection encryption level is set to Enabled: High Level'
  desc 'Ensure Set client connection encryption level is set to Enabled: High Level'
  tag 'cis-level-1', 'cis-18.9.52.3.9.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('MinEncryptionLevel', :type_dword, 3) }
  end
end

# 18.9.52.3.10.1 (L2) Ensure Set time limit for active but idle Remote Desktop Services sessions is set to Enabled: 15 minutes or less
# control '18.9.52.3.10.1' do
#   impact 1.0
#   title '(L2) Ensure Set time limit for active but idle Remote Desktop Services sessions is set to Enabled: 15 minutes or less'
#   desc '(L2) Ensure Set time limit for active but idle Remote Desktop Services sessions is set to Enabled: 15 minutes or less'
#   tag 'cis-level-2', 'cis-18.9.52.3.10.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('MaxIdleTime', :type_dword, 900000) }
#   end
# end

# 18.9.52.3.10.2 (L2) Ensure Set time limit for disconnected sessions is set to Enabled: 1 minute
# control '18.9.52.3.10.2' do
#   impact 1.0
#   title '(L2) Ensure Set time limit for disconnected sessions is set to Enabled: 1 minute'
#   desc '(L2) Ensure Set time limit for disconnected sessions is set to Enabled: 1 minute'
#   tag 'cis-level-2', 'cis-18.9.52.3.10.2'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
#     it { should exist }
#     it { should have_property_value('MaxDisconnectionTime', :type_dword, 60000) }
#   end
# end

# 18.9.52.3.11.1 (L1) Ensure 'Do not delete temp folders upon exit' is set to 'Disabled'
control '18.9.52.3.11.1' do
  impact 1.0
  title 'Ensure Do not delete temp folders upon exit is set to Disabled'
  desc 'Ensure Do not delete temp folders upon exit is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.52.3.11.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('DeleteTempDirsOnExit', :type_dword, 1) }
  end
end

# 18.9.52.3.11.2 (L1) Ensure 'Do not use temporary folders per session' is set to 'Disabled'
control '18.9.52.3.11.2' do
  impact 1.0
  title 'Ensure Do not use temporary folders per session is set to Disabled'
  desc 'Ensure Do not use temporary folders per session is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.52.3.11.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services') do
    it { should exist }
    it { should have_property_value('PerSessionTempDir', :type_dword, 1) }
  end
end

# 18.9.53.1 (L1) Ensure 'Prevent downloading of enclosures' is set to 'Enabled'
control '18.9.53.1' do
  impact 1.0
  title 'Ensure Prevent downloading of enclosures is set to Enabled'
  desc 'Ensure Prevent downloading of enclosures is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.53.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds') do
    it { should exist }
    it { should have_property_value('DisableEnclosureDownload', :type_dword, 1) }
  end
end

# 18.9.54.2 (L1) Ensure 'Allow Cortana' is set to 'Disabled'
control '18.9.54.2' do
  impact 1.0
  title 'Ensure Allow Cortana is set to Disabled'
  desc 'Ensure Allow Cortana is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.54.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search') do
    it { should exist }
    it { should have_property_value('AllowCortana', :type_dword, 0) }
  end
end

# 18.9.54.3 (L1) Ensure 'Allow Cortana above lock screen' is set to 'Disabled'
control '18.9.54.3' do
  impact 1.0
  title 'Ensure Allow Cortana above lock screen is set to Disabled'
  desc 'Ensure Allow Cortana above lock screen is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.54.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search') do
    it { should exist }
    it { should have_property_value('AllowCortanaAboveLock', :type_dword, 0) }
  end
end

# 18.9.54.4 (L1) Ensure 'Allow indexing of encrypted files' is set to 'Disabled'
control '18.9.54.4' do
  impact 1.0
  title 'Ensure Allow indexing of encrypted files is set to Disabled'
  desc 'Ensure Allow indexing of encrypted files is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.54.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search') do
    it { should exist }
    it { should have_property_value('AllowIndexingEncryptedStoresOrItems', :type_dword, 0) }
  end
end

# 18.9.54.5 (L1) Ensure 'Allow search and Cortana to use location' is set to 'Disabled'
control '18.9.54.5' do
  impact 1.0
  title 'Ensure Allow search and Cortana to use location is set to Disabled'
  desc 'Ensure Allow search and Cortana to use location is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.54.5'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search') do
    it { should exist }
    it { should have_property_value('AllowSearchToUseLocation', :type_dword, 0) }
  end
end

# 18.9.59.1 (L2) Ensure Turn off KMS Client Online AVS Validation is set to Enabled
# control '18.9.59.1' do
#   impact 1.0
#   title '(L2) Ensure Turn off KMS Client Online AVS Validation is set to Enabled'
#   desc '(L2) Ensure Turn off KMS Client Online AVS Validation is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.59.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform') do
#     it { should exist }
#     it { should have_property_value('NoGenTicket', :type_dword, 1) }
#   end
# end

# 18.9.61.1 (L2) Ensure Disable all apps from Windows Store is set to Enabled
# control '18.9.61.1' do
#   impact 1.0
#   title '(L2) Ensure Disable all apps from Windows Store is set to Enabled'
#   desc '(L2) Ensure Disable all apps from Windows Store is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.61.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore') do
#     it { should exist }
#     it { should have_property_value('DisableStoreApps', :type_dword, 0) }
#   end
# end

# 18.9.61.2 (L1) Ensure 'Turn off Automatic Download and Install of updates' is set to 'Disabled'
control '18.9.61.2' do
  impact 1.0
  title 'Ensure Turn off Automatic Download and Install of updates is set to Disabled'
  desc 'Ensure Turn off Automatic Download and Install of updates is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.61.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore') do
    it { should exist }
    it { should have_property_value('AutoDownload', :type_dword, 4) }
  end
end

# 18.9.61.3 (L1) Ensure 'Turn off the offer to update to the latest version of Windows' is set to 'Enabled'
control '18.9.61.3' do
  impact 1.0
  title 'Ensure Turn off the offer to update to the latest version of Windows is set to Enabled'
  desc 'Ensure Turn off the offer to update to the latest version of Windows is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.61.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore') do
    it { should exist }
    it { should have_property_value('DisableOSUpgrade', :type_dword, 1) }
  end
end

# 18.9.61.4 (L2) Ensure Turn off the Store application is set to Enabled
# control '18.9.61.4' do
#   impact 1.0
#   title '(L2) Ensure Turn off the Store application is set to Enabled'
#   desc '(L2) Ensure Turn off the Store application is set to Enabled'
#   tag 'cis-level-2', 'cis-18.9.61.4'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore') do
#     it { should exist }
#     it { should have_property_value('RemoveWindowsStore', :type_dword, 1) }
#   end
# end

# 18.9.69.3.1 (L2) Ensure Join Microsoft MAPS is set to Disabled
# control '18.9.69.3.1' do
#   impact 1.0
#   title '(L2) Ensure Join Microsoft MAPS is set to Disabled'
#   desc '(L2) Ensure Join Microsoft MAPS is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.69.3.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet') do
#     it { should exist }
#     it { should have_property_value('SpynetReporting', :type_dword, 0) }
#   end
# end

# 18.9.69.8.1 (L2) Ensure Configure Watson events is set to Disabled
# control '18.9.69.8.1' do
#   impact 1.0
#   title '(L2) Ensure Configure Watson events is set to Disabled'
#   desc '(L2) Ensure Configure Watson events is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.69.8.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting') do
#     it { should exist }
#     it { should have_property_value('DisableGenericRePorts', :type_dword, 1) }
#   end
# end

# 18.9.73.1 (L2) Ensure Allow suggested apps in Windows Ink Workspace is set to Disabled
# control '18.9.73.1' do
#   impact 1.0
#   title '(L2) Ensure Allow suggested apps in Windows Ink Workspace is set to Disabled'
#   desc '(L2) Ensure Allow suggested apps in Windows Ink Workspace is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.73.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace') do
#     it { should exist }
#     it { should have_property_value('AllowSuggestedAppsInWindowsInkWorkspace', :type_dword, 0) }
#   end
# end

# 18.9.73.2 (L1)  Ensure 'Allow Windows Ink Workspace' is set to 'Enabled: On, but disallow access above lock' OR 'Disabled' but not 'Enabled: On'
control '18.9.73.2' do
  impact 1.0
  title ' Ensure Allow Windows Ink Workspace is set to Enabled: On, but disallow access above lock OR Disabled but not Enabled: On'
  desc ' Ensure Allow Windows Ink Workspace is set to Enabled: On, but disallow access above lock OR Disabled but not Enabled: On'
  tag 'cis-level-1', 'cis-18.9.73.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace') do
    it { should exist }
    it { should have_property_value('AllowWindowsInkWorkspace', :type_dword, 0) }
  end
end

# 18.9.74.1 (L1) Ensure 'Allow user control over installs' is set to 'Disabled'
control '18.9.74.1' do
  impact 1.0
  title 'Ensure Allow user control over installs is set to Disabled'
  desc 'Ensure Allow user control over installs is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.74.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Installer') do
    it { should exist }
    it { should have_property_value('EnableUserControl', :type_dword, 0) }
  end
end

# 18.9.74.2 (L1) Ensure 'Always install with elevated privileges' is set to 'Disabled'
control '18.9.74.2' do
  impact 1.0
  title 'Ensure Always install with elevated privileges is set to Disabled'
  desc 'Ensure Always install with elevated privileges is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.74.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Installer') do
    it { should exist }
    it { should have_property_value('AlwaysInstallElevated', :type_dword, 0) }
  end
end

# 18.9.74.3 (L2) Ensure Prevent Internet Explorer security prompt for Windows Installer scripts is set to Disabled
# control '18.9.74.3' do
#   impact 1.0
#   title '(L2) Ensure Prevent Internet Explorer security prompt for Windows Installer scripts is set to Disabled'
#   desc '(L2) Ensure Prevent Internet Explorer security prompt for Windows Installer scripts is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.74.3'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Installer') do
#     it { should exist }
#     it { should have_property_value('SafeForScripting', :type_dword, 0) }
#   end
# end

# 18.9.75.1 (L1) Ensure 'Sign-in last interactive user automatically after a system-initiated restart' is set to 'Disabled'
control '18.9.75.1' do
  impact 1.0
  title 'Ensure Sign-in last interactive user automatically after a system-initiated restart is set to Disabled'
  desc 'Ensure Sign-in last interactive user automatically after a system-initiated restart is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.75.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System') do
    it { should exist }
    it { should have_property_value('DisableAutomaticRestartSignOn', :type_dword, 1) }
  end
end

# 18.9.84.1 (L1) Ensure 'Turn on PowerShell Script Block Logging' is set to 'Disabled'
control '18.9.84.1' do
  impact 1.0
  title 'Ensure Turn on PowerShell Script Block Logging is set to Disabled'
  desc 'Ensure Turn on PowerShell Script Block Logging is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.84.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging') do
    it { should exist }
    it { should have_property_value('EnableScriptBlockLogging', :type_dword, 0) }
  end
end

# 18.9.84.2 (L1) Ensure 'Turn on PowerShell Transcription' is set to 'Disabled'
control '18.9.84.2' do
  impact 1.0
  title 'Ensure Turn on PowerShell Transcription is set to Disabled'
  desc 'Ensure Turn on PowerShell Transcription is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.84.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription') do
    it { should exist }
    it { should have_property_value('EnableTranscripting', :type_dword, 0) }
  end
end

# 18.9.86.1.1 (L1) Ensure 'Allow Basic authentication' is set to 'Disabled'
control '18.9.86.1.1' do
  impact 1.0
  title 'Ensure Allow Basic authentication is set to Disabled'
  desc 'Ensure Allow Basic authentication is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.86.1.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client') do
    it { should exist }
    it { should have_property_value('AllowBasic', :type_dword, 0) }
  end
end

# 18.9.86.1.2 (L1) Ensure 'Allow unencrypted traffic' is set to 'Disabled'
control '18.9.86.1.2' do
  impact 1.0
  title 'Ensure Allow unencrypted traffic is set to Disabled'
  desc 'Ensure Allow unencrypted traffic is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.86.1.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client') do
    it { should exist }
    it { should have_property_value('AllowUnencryptedTraffic', :type_dword, 0) }
  end
end

# 18.9.86.1.3 (L1) Ensure 'Disallow Digest authentication' is set to 'Enabled'
control '18.9.86.1.3' do
  impact 1.0
  title 'Ensure Disallow Digest authentication is set to Enabled'
  desc 'Ensure Disallow Digest authentication is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.86.1.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client') do
    it { should exist }
    it { should have_property_value('AllowDigest', :type_dword, 0) }
  end
end

# 18.9.86.2.1 (L1) Ensure 'Allow Basic authentication' is set to 'Disabled'
control '18.9.86.2.1' do
  impact 1.0
  title 'Ensure Allow Basic authentication is set to Disabled'
  desc 'Ensure Allow Basic authentication is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.86.2.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service') do
    it { should exist }
    it { should have_property_value('AllowBasic', :type_dword, 0) }
  end
end

# 18.9.86.2.2 (L2) Ensure Allow remote server management through WinRM is set to Disabled
# control '18.9.86.2.2' do
#   impact 1.0
#   title '(L2) Ensure Allow remote server management through WinRM is set to Disabled'
#   desc '(L2) Ensure Allow remote server management through WinRM is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.86.2.2'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service') do
#     it { should exist }
#     it { should have_property_value('AllowAutoConfig', :type_dword, 0) }
#   end
# end

# 18.9.86.2.3 (L1) Ensure 'Allow unencrypted traffic' is set to 'Disabled'
control '18.9.86.2.3' do
  impact 1.0
  title 'Ensure Allow unencrypted traffic is set to Disabled'
  desc 'Ensure Allow unencrypted traffic is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.86.2.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service') do
    it { should exist }
    it { should have_property_value('AllowUnencryptedTraffic', :type_dword, 0) }
  end
end

# 18.9.86.2.4 (L1) Ensure 'Disallow WinRM from storing RunAs credentials' is set to 'Enabled'
control '18.9.86.2.4' do
  impact 1.0
  title 'Ensure Disallow WinRM from storing RunAs credentials is set to Enabled'
  desc 'Ensure Disallow WinRM from storing RunAs credentials is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.86.2.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service') do
    it { should exist }
    it { should have_property_value('DisableRunAs', :type_dword, 1) }
  end
end

# 18.9.87.1 (L2) Ensure Allow Remote Shell Access is set to Disabled
# control '18.9.87.1' do
#   impact 1.0
#   title '(L2) Ensure Allow Remote Shell Access is set to Disabled'
#   desc '(L2) Ensure Allow Remote Shell Access is set to Disabled'
#   tag 'cis-level-2', 'cis-18.9.87.1'
#   ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

#   describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service\WinRS') do
#     it { should exist }
#     it { should have_property_value('AllowRemoteShellAccess', :type_dword, 0) }
#   end
# end

# 18.9.90.1.1 (L1)  Ensure 'Select when Feature Updates are received' is set to 'Enabled: Current Branch for Business, 180 days'
control '18.9.90.1.1' do
  impact 1.0
  title ' Ensure Select when Feature Updates are received is set to Enabled: Current Branch for Business, 180 days'
  desc ' Ensure Select when Feature Updates are received is set to Enabled: Current Branch for Business, 180 days'
  tag 'cis-level-1', 'cis-18.9.90.1.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate') do
    it { should exist }
    it { should have_property_value('DeferFeatureUpdates', :type_dword, 1) }
    it { should have_property_value('DeferFeatureUpdatesPeriodInDays', :type_dword, 180) }
    it { should have_property_value('BranchReadinessLevel', :type_dword, 32) }
  end
end

# 18.9.90.1.2 (L1) Ensure 'Select when Quality Updates are received' is set to 'Enabled: 0 days'
control '18.9.90.1.2' do
  impact 1.0
  title 'Ensure Select when Quality Updates are received is set to Enabled: 0 days'
  desc 'Ensure Select when Quality Updates are received is set to Enabled: 0 days'
  tag 'cis-level-1', 'cis-18.9.90.1.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate') do
    it { should exist }
    it { should have_property_value('DeferQualityUpdates', :type_dword, 1) }
    it { should have_property_value('DeferQualityUpdatesPeriodInDays', :type_dword, 0) }
  end
end

# 18.9.90.2 (L1) Ensure 'Configure Automatic Updates' is set to 'Enabled'
control '18.9.90.2' do
  impact 1.0
  title 'Ensure Configure Automatic Updates is set to Enabled'
  desc 'Ensure Configure Automatic Updates is set to Enabled'
  tag 'cis-level-1', 'cis-18.9.90.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU') do
    it { should exist }
    it { should have_property_value('NoAutoUpdate', :type_dword, 0) }
  end
end

# 18.9.90.3 (L1) Ensure 'Configure Automatic Updates: Scheduled install day' is set to '0 - Every day'
control '18.9.90.3' do
  impact 1.0
  title 'Ensure Configure Automatic Updates: Scheduled install day is set to 0 - Every day'
  desc 'Ensure Configure Automatic Updates: Scheduled install day is set to 0 - Every day'
  tag 'cis-level-1', 'cis-18.9.90.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU') do
    it { should exist }
    it { should have_property_value('ScheduledInstallDay', :type_dword, 0) }
  end
end

# 18.9.90.4 (L1) Ensure 'No auto-restart with logged on users for scheduled automatic updates installations' is set to 'Disabled'
control '18.9.90.4' do
  impact 1.0
  title 'Ensure No auto-restart with logged on users for scheduled automatic updates installations is set to Disabled'
  desc 'Ensure No auto-restart with logged on users for scheduled automatic updates installations is set to Disabled'
  tag 'cis-level-1', 'cis-18.9.90.4'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU') do
    it { should exist }
    it { should have_property_value('NoAutoRebootWithLoggedOnUsers', :type_dword, 0) }
  end
end
