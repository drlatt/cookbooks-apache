package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "hello world
	IPADDRESS: #{node['ipaddress']}
	HOSTNAME: #{node['hostname']}
"
	action :create
end

service 'httpd' do
	action [ :enable, :start ]
end
