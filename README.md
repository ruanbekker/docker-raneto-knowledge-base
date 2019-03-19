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

Run it with my example articles:

```
docker run -it -p 3000:3000 -v $PWD/content:/app/example/content raneto:local
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
Description: Content is visible for search
Sort: 1
*/

## Markdown

Your markdown here

```

## Screenshots

Homepage:

![image](https://user-images.githubusercontent.com/567298/54615966-a6adb680-4a67-11e9-8e65-13d66d1e14b6.png)

Search:

![image](https://user-images.githubusercontent.com/567298/54616063-cba22980-4a67-11e9-9be5-db0e11aa39bc.png)

Article:

![image](https://user-images.githubusercontent.com/567298/54616108-dd83cc80-4a67-11e9-8a02-4fea615fdbca.png)

For more information see: [raneto.com](http://raneto.com/)
