# sextractor--docker
SextractorPlusPlus docker container implementation

This is a way to run SExtractorPlusPlus in a docker container. 

[SourceXtractorPlusPlus GitHub repo](https://github.com/astrorama/SourceXtractorPlusPlus)

*important*: update the $(pwd) to the path of the directory you want to run the program in. This folder will be shared with the container. 

## Usage
```bash
sudo docker build -t sep .

docker run --rm -v $(pwd):/data sep sourcextractor++ --version
```

### Generate a config file
```bash
docker run --rm -v $(pwd):/data sep sourcextractor++ --dump-default-config > data/sepp.config
```

### Getting possible properties
```bash
docker run --rm -v $(pwd):/data sep sourcextractor++ --property-column-mapping-all>data
```

### Running the program
```bash
docker run --rm -v $(pwd):/data sep sourcextractor++ -c data/sepp.config data/image.fits
```

### Running
```bash
docker run --rm -v $(pwd):/data sep sourcextractor++ -c data/sepp.config data/image.fits
```