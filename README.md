# docker-raneto-knowledge-base
Raneto is a Knowledgebase platform for Node.js that uses static Markdown files to power the knowledgebase

```
$ wget https://github.com/gilbitron/Raneto/archive/0.16.2.tar.gz
$ tar -xvf 0.16.2.tar.gz
$ docker run -it -p 3000:3000 -v $PWD/Raneto-0.16.2:/app node:alpine sh
$ cd /app
$ npm install
$ npm run gulp
$ npm start
```

Config:

![](https://user-images.githubusercontent.com/567298/54596643-bc0deb00-4a3d-11e9-9eda-770f4e2b650e.png)

```
./example/content/article-in-main-block.md
```

```
./example/content/troubleshooting/article-in-troubleshooting-block.md
```

Example Article:

```
cat example/content/tutorials/deploying-raneto-to-heroku.md
/*
Title: Deploying Raneto to Heroku
Sort: 1
*/

[Title to link](https://example.com) this is some text describing the link.

## Heading 

This is more text and below some numbered points:

1. This is describing the path linked: [installed](%base_url%/install/installing-raneto) .
2. Then this is describing an external link: [Example Text](https://example.com)

## Heading 2

some `bash` commands. 

    $ var = "hello"
    $ echo "${var}"

This is more text.

**NOTE: this is a note**

```
