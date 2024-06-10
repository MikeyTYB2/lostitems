fx_version 'adamant'

game 'gta5'

lua54 'yes'

author 'MikeyTYB V2#8861'

version '2.1.5'

lua54 'yes'

client_scripts {
    'client.lua'
  }
  
  server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
  }
  
  shared_scripts {
    '@ox_lib/init.lua'
  }
  
