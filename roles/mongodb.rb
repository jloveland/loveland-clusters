name 'mongodb'
description 'Default run_list for the mongodb node'
run_list(
  'recipe[mongodb::default]',
  'recipe[mongodb::10gen_repo]'
)
