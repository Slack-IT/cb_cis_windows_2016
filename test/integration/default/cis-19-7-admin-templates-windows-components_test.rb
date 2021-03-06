#
# encoding: utf-8

# Inspec test for recipe cb_cis_windows_2016::cis-19-7-admin-templates-windows-components

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# 19.7.4.1 (L1) Ensure 'Do not preserve zone information in file attachments' is set to 'Disabled'
control '19.7.4.1' do
  impact 1.0
  title 'Ensure Do not preserve zone information in file attachments is set to Disabled'
  desc 'Ensure Do not preserve zone information in file attachments is set to Disabled'
  tag 'cis-level-1', 'cis-19.7.4.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments') do
    it { should exist }
    it { should have_property_value('SaveZoneInformation', :type_dword, 2) }
  end
end

# 19.7.4.2 (L1) Ensure 'Notify antivirus programs when opening attachments' is set to 'Enabled'
control '19.7.4.2' do
  impact 1.0
  title 'Ensure Notify antivirus programs when opening attachments is set to Enabled'
  desc 'Ensure Notify antivirus programs when opening attachments is set to Enabled'
  tag 'cis-level-1', 'cis-19.7.4.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments') do
    it { should exist }
    it { should have_property_value('ScanWithAntiVirus', :type_dword, 3) }
  end
end

# 19.7.7.1 (L2) Ensure Configure Windows spotlight on Lock Screen is set to Disabled
control '19.7.7.1' do
  impact 1.0
  title '(L2) Ensure Configure Windows spotlight on Lock Screen is set to Disabled'
  desc '(L2) Ensure Configure Windows spotlight on Lock Screen is set to Disabled'
  tag 'cis-level-2', 'cis-19.7.7.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\Software\Policies\Microsoft\Windows\CloudContent') do
    it { should exist }
    it { should have_property_value('ConfigureWindowsSpotlight', :type_dword, 2) }
  end
end

# 19.7.7.2 (L1) Ensure 'Do not suggest third-party content in Windows spotlight' is set to 'Enabled'
control '19.7.7.2' do
  impact 1.0
  title 'Ensure Do not suggest third-party content in Windows spotlight is set to Enabled'
  desc 'Ensure Do not suggest third-party content in Windows spotlight is set to Enabled'
  tag 'cis-level-1', 'cis-19.7.7.2'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\Software\Policies\Microsoft\Windows\CloudContent') do
    it { should exist }
    it { should have_property_value('DisableThirdPartySuggestions', :type_dword, 1) }
  end
end

# 19.7.7.3 (L2) Ensure Turn off all Windows spotlight features is set to Enabled
control '19.7.7.3' do
  impact 1.0
  title '(L2) Ensure Turn off all Windows spotlight features is set to Enabled'
  desc '(L2) Ensure Turn off all Windows spotlight features is set to Enabled'
  tag 'cis-level-2', 'cis-19.7.7.3'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\Software\Policies\Microsoft\Windows\CloudContent') do
    it { should exist }
    it { should have_property_value('DisableWindowsSpotlightFeatures', :type_dword, 1) }
  end
end

# 19.7.26.1 (L1) Ensure 'Prevent users from sharing files within their profile.' is set to 'Enabled'
control '19.7.26.1' do
  impact 1.0
  title 'Ensure Prevent users from sharing files within their profile. is set to Enabled'
  desc 'Ensure Prevent users from sharing files within their profile. is set to Enabled'
  tag 'cis-level-1', 'cis-19.7.26.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer') do
    it { should exist }
    it { should have_property_value('NoInplaceSharing', :type_dword, 1) }
  end
end

# 19.7.39.1 (L1) Ensure 'Always install with elevated privileges' is set to 'Disabled'
control '19.7.39.1' do
  impact 1.0
  title 'Ensure Always install with elevated privileges is set to Disabled'
  desc 'Ensure Always install with elevated privileges is set to Disabled'
  tag 'cis-level-1', 'cis-19.7.39.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\SOFTWARE\Policies\Microsoft\Windows\Installer') do
    it { should exist }
    it { should have_property_value('AlwaysInstallElevated', :type_dword, 0) }
  end
end

# 19.7.43.2.1 (L2) Ensure Prevent Codec Download is set to Enabled
control '19.7.43.2.1' do
  impact 1.0
  title '(L2) Ensure Prevent Codec Download is set to Enabled'
  desc '(L2) Ensure Prevent Codec Download is set to Enabled'
  tag 'cis-level-2', 'cis-19.7.43.2.1'
  ref 'CIS Windows 2016 RTM (Release 1607) v1.0.0', url: 'https://www.cisecurity.org/cis-benchmarks/'

  describe registry_key('HKEY_USERS\.DEFAULT\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer') do
    it { should exist }
    it { should have_property_value('PreventCodecDownload', :type_dword, 1) }
  end
end
