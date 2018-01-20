# tufte-pandoc-css-docker

Repo contains the dockerfile for using Pandoc Markdown with Tufte CSS and has the following installed
+ [pandoc](http://pandoc.org/)
+ [tufte-css](https://github.com/edwardtufte/tufte-css)
+ [pandoc-sidenote](https://github.com/jez/pandoc-sidenote)
+ [tufte-pandoc-css](https://github.com/jez/tufte-pandoc-css)

## Usage
1. clone repo and build docker image

2. To simply try tufte-pandoc-css, run as 
``` 
$ docker run -it <image_name> 
# cd tufte-pandoc-css
# make docs/index.md
```
to get the `.html` file.

Else mount required directory using `docker -v` and inside container, run `make` with path to `.md` file.
