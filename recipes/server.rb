package 'httpd' do
	action :install
end

template '/var/www/html/index.html' do
	source 'motd.erb'

	action :create
end

service 'httpd' do
	action [ :enable, :start ]
end
