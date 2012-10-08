Following steps are needed to run this application;

1. cd /path/to/dir/ bundle install

2. Please change database.yml before you run following commands;


2.1. rake db:create
2.2. rake db:migrate



3. In order to run server you'll need to execute followings (both in separate ternimals);


3.1. rackup private_pub.ru -s thin -E production 
3.2. rails s -p 3000


