#
# Cookbook:: cb_cis_windows_2016
# Recipe:: cis-17-3-detailed-tracking
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# 17.3.1 (L1) Ensure 'Audit PNP Activity' is set to 'Success'
registry_key '' do
  values [{ name: '', type: :dword, data: 1 }]
  action :create
  only_if { node['cb_cis_windows_2016']['cis_level_1'] = true }
end

# 17.3.2 (L1) Ensure 'Audit Process Creation' is set to 'Success'
registry_key '' do
  values [{ name: '', type: :dword, data: 1 }]
  action :create
  only_if { node['cb_cis_windows_2016']['cis_level_1'] = true }
end
