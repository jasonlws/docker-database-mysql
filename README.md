# Build your own MySQL image with init data

## What is MySQL?

MySQL is the world's most popular open source database. With its proven performance, reliability and ease-of-use, MySQL has become the leading database choice for web-based applications, covering the entire range from personal projects and websites, via e-commerce and information services, all the way to high profile web properties including Facebook, Twitter, YouTube, Yahoo! and many more.

For more information and related downloads for MySQL Server and other MySQL products, please visit www.mysql.com.

## Create your init data

Update [setup.sql](https://github.com/jasonlws/docker-database-mysql/blob/master/setup.sql) file

```sql
CREATE DATABASE IF NOT EXISTS `jasonlws` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
GO
USE `jasonlws`;
GO
```

## How to build

Build an image from a Dockerfile

```bash
docker build -t jasonlws/mysql:8.1.0 --build-arg IMAGE_TAG=8.1.0 --build-arg SETUP_SQL_PATH=./init-data --no-cache .
```

## How to run

Create and run a new container from an image

### docker run

```bash
docker run --name jasonlws-mysql -e MYSQL_ROOT_PASSWORD=P@ssw0rd -p 3306:3306 -d jasonlws/mysql:8.1.0
```

### docker-compose

```bash
docker-compose -f ./docker-compose/docker-compose.yml --env-file ./docker-compose/.env up
```

## References

[DockerHub MySQL Image](https://hub.docker.com/_/mysql)

## License

MIT - a permissive free software license originating at the Massachusetts Institute of Technology (MIT), it puts only very limited restriction on reuse and has, therefore, an excellent license compatibility. It permits reuse within proprietary software provided that all copies of the licensed software include a copy of the MIT License terms and the copyright notice.

Check the [LICENSE file](https://github.com/jasonlws/docker-database-mysql/blob/master/LICENSE) for more details.