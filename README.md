# *TreeTagger* Docker Image

Docker image for **Helmut Schmid**'s [TreeTagger](http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/).

## Credits

**Please read *Helmut Schmid*'s [license terms](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/Tagger-Licence) before using this Dockerfile.**

## Summary

This image the most recent parameter files available on the tagger's website.

Texts in the following languages can be **tagged**: *Bulgarian, Catalan, Czech, Danish, Dutch, English, Estonian, Finnish, French, Galician, German, Middle High german, Greek, Ancient Greek, Ancient Greek (beta encoding), Italian, Korean, Latin, Norwegian (Bokmål), Polish, Portuguese, Portuguese (fine-grained tagset), Portuguese (alternative corpus), Romanian, Russian, Slovak, Slovenian, Spanish, Spanish (Ancora corpus), Swahili, Swedish*.

Texts in the following languages can be **chunked**: *English, French, German, Spanish*.

## Usage

### Building

In order to build the image, you have to clone the repository.

``` shell
git clone https://github.com/sfischer13/docker-treetagger
cd docker-treetagger
```

Then, build the Docker image.

``` shell
make build VERSION=3.2.2
```

### Running

Before you can use the tagger, you have to build the image as described above.

#### Tagging

``` shell
echo "This is a test." | docker run --rm -i sfischer13/treetagger:3.2.2 tree-tagger-english 2> /dev/null
```

#### Training

``` shell
docker run --rm -i sfischer13/treetagger:3.2.2 train-tree-tagger
```

#### Miscellaneous commands

For an overview of the available tools, run one of the following commands:

``` shell
docker run --rm -i sfischer13/treetagger:3.2.2
docker run --rm -i sfischer13/treetagger:3.2.2 --help
```

Open a shell within the container:

``` shell
docker run --rm -i -t sfischer13/treetagger:3.2.2 bash
```
