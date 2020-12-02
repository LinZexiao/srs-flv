 #获取当前正在执行的makefile的绝对目录
PWD:=$(shell pwd)

release: nginx srs
	echo "build"

nginx: 
	docker run \
	--restart=always \
	--name nginx -d --rm \
	-p 80:80 \
	-v $(PWD)/html:/usr/share/nginx/html:ro \
	-v $(PWD)/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
	nginx

srs: 
	docker run \
	--restart=always \
	--name srs --rm -d \
	-p 1935:1935 -p 1985:1985 -p 8080:8080 \
	-v $(PWD)/conf/srs.conf:/usr/local/srs/conf/srs.conf \
	-v $(PWD)/logs/srs.log:/usr/local/srs/objs/srs.log \
	ossrs/srs:3




	
