# audible_pipline
Audible AAX files into something I can listen to on my old ipod nano classic (m4b)


## To install
```bash
brew install ffmpeg
brew install mp4v2

make requirements
```

Get write version of `chromedriver` from https://sites.google.com/a/chromium.org/chromedriver/downloads and put it in the `audible-activator` directory

## To run

```bash
make convert input_file=PATH_TO_AAX_FILE
```
