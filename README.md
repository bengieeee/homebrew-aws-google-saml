# Homebrew AWS Google SAML

This repository is to help distribute the [AWS Google SAML](https://github.com/bengieeee/aws-google-saml) python package.

### How can I use this application?

For more information for the usage of AWS Google SAML, please check out it's [PyPi readme](https://pypi.org/project/aws-google-saml/).

### How can I install this Formula to my Mac?

First, obviously, install Brew. Here are the [Mac installation instructions](https://docs.brew.sh/Installation), and [Linux / Windows (via WSL2) instructions](https://docs.brew.sh/Homebrew-on-Linux)

Then, simply run the the following command

```sh
brew install bengieeee/homebrew-aws-google-saml/aws-google-saml
```

Remember, if you haven't yet - Read through the usage documentation available on [PyPi](https://pypi.org/project/aws-google-saml/).

### How does this repository update Brew?

I've scheduled a Github Action to run once a day, pulling the latest distribution from PyPi, and generate a new formula using [Homebrew PyPi Poet](https://github.com/tdsmith/homebrew-pypi-poet).

It can also be triggered manually by administrators (me 🙃).
