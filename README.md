# docker-raneto-knowledge-base
Raneto is a Knowledgebase platform for Node.js that uses static Markdown files to power the knowledgebase

## Usage

Run it with Docker:

```
git clone https://github.com/ruanbekker/docker-raneto-knowledge-base raneto
cd raneto
docker build -t raneto:local .
docker run -it -p 4000:4000 raneto:local
```

Run it standalone:

```
wget https://github.com/gilbitron/Raneto/archive/0.16.2.tar.gz
tar -xvf 0.16.2.tar.gz
cd Raneto-0.16.2
npm install
npm run gulp
npm start
```

## Configuration:

The structure on paths represent different categories, eg.

```
./example/content/article-in-main-block.md
```

and

```
./example/content/troubleshooting/article-in-troubleshooting-block.md
```

will result in:

![](https://user-images.githubusercontent.com/567298/54596643-bc0deb00-4a3d-11e9-9eda-770f4e2b650e.png)


## Example Article:

The metadata of the article is configurable at the top, following by markdown:

```
cat example/content/tutorials/deploying-raneto-on-docker.md

/*
Title: Deploying Raneto on Docker
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

For more information see: [raneto.com](http://raneto.com/)
