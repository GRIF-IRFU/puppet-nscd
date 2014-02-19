# == Class: nscd::params
#
class nscd::params {
  $service_enable = true
  $service_ensure = 'running'

  $passwd_enable_cache      = 'yes'
  $passwd_positive_time_to_live      = '600'
  $passwd_negative_time_to_live      = '20'
  $passwd_suggested_size    = '211'
  $passwd_check_files       = 'yes'
  $passwd_persistent        = 'yes'
  $passwd_shared            = 'yes'
  $passwd_max_db_size       = '33554432'
  $passwd_auto_propagate    = 'yes'

  $group_enable_cache       = 'yes'
  $group_positive_time_to_live       = '3600'
  $group_negative_time_to_live       = '60'
  $group_suggested_size     = '211'
  $group_check_files        = 'yes'
  $group_persistent         = 'yes'
  $group_shared             = 'yes'
  $group_max_db_size        = '33554432'
  $group_auto_propagate     = 'yes'

  $hosts_enable_cache       = 'yes'
  $hosts_positive_time_to_live       = '3600'
  $hosts_negative_time_to_live       = '20'
  $hosts_suggested_size     = '211'
  $hosts_check_files        = 'yes'
  $hosts_persistent         = 'yes'
  $hosts_shared             = 'yes'
  $hosts_max_db_size        = '33554432'

  $services_enable_cache    = 'yes'
  $services_positive_time_to_live    = '28800'
  $services_negative_time_to_live    = '20'
  $services_suggested_size  = '211'
  $services_check_files     = 'yes'
  $services_persistent      = 'yes'
  $services_shared          = 'yes'
  $services_max_db_size     = '33554432'

  $netgroup_enable_cache    = 'yes'
  $netgroup_positive_time_to_live    = '28800'
  $netgroup_negative_time_to_live    = '20'
  $netgroup_suggested_size  = '211'
  $netgroup_check_files     = 'yes'
  $netgroup_persistent      = 'yes'
  $netgroup_shared          = 'yes'
  $netgroup_max_db_size     = '33554432'

  $nscd_services = [ 'passwd', 'group', 'hosts', 'services', 'netgroup' ]
  $nscd_service_options = [
    'enable-cache',
    'positive-time-to-live',
    'negative-time-to-live',
    'suggested-size',
    'check-files',
    'persistent',
    'shared',
    'max-db-size',
    'auto-propagate',
  ]
}
