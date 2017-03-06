package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content 'hello world'
	action :create
end

service 'httpd' do
	action [ :enable, :start ]
end
