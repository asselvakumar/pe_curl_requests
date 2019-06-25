curl -X POST -H 'Content-Type: application/json' --cert $(puppet config print hostcert) --key $(puppet config print hostprivkey) --cacert $(puppet config print localcacert) https://$(hostname -f):4433/rbac-api/v1/roles -d '{"description":"CD4PE user role","display_name":"CD4PE Role","user_ids":[],"group_ids":[],"permissions":[{"object_type":"node_groups","action":"modify_children","instance":"*"},{"object_type":"node_groups","action":"set_environment","instance":"*"},{"object_type":"node_groups","action":"view","instance":"*"},{"object_type":"puppet_agent","action":"run","instance":"*"},{"object_type":"environment","action":"deploy_code","instance":"*"},{"object_type":"nodes","action":"view_data","instance":"*"},{"object_type":"node_groups","action":"edit_config_data","instance":"*"},{"object_type":"orchestrator","action":"view","instance":"*"}]}'