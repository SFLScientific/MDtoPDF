#  MD to PDF conversion

![ ](imgs/logo.pn#center)

![](https://raster.shields.io/badge/python-v3.6+-blue.png)
![](https://api.travis-ci.org/anfederico/Clairvoyant.png?branch=master)
![](https://raster.shields.io/badge/dependencies-up%20to%20date-brightgreen.png)


# Overview


Looks for any md files with names (case-insensitive) starting with "README" and creates a PDF format.


Implements this command to build a docker container (note svg is not working, use png format for images instead).


```
docker build -t pandoc-with-rsvg -f Dockerfile .
```


Runs this command with the specified files in entrypoint.sh
```
docker run --rm -v ${PWD}:/data pandoc-with-rsvg
```


# Troubleshooting

Issue: Figures not appearing:
- Do not use .svg format for image files
- Pandoc has multiple restrictions on html formatting. Use their native format instead (see [here](https://pandoc.org/MANUAL.html#images) for more information.) 