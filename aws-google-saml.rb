class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user-browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/fe/58/5d4b0acad69e7d4eda4fe0e43d2f9fe260a3f2331de3618c22cda33ce06d/aws-google-saml-0.7.9.tar.gz"
  sha256 "e57f7322734cb1fbd45b915f15f54151b3d1fff601fb1bedd3ebbc861cf2d28e"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/2f/35/6b344e4b9e726956a2d0c15255659c4967bc234b185694c5bf9887b7cb9c/boto3-1.28.59.tar.gz"
    sha256 "aa861e5568a564a5ce2fff5413d6ae2cda0eed7399b3a949bc861a20915e2046"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/c2/d2/0640bb7298d9056a4ffcb4cdfc518ac5b5654816e55cf82a413a275ce5ae/botocore-1.31.59.tar.gz"
    sha256 "159f637300206a0b37b49c1bee61265650843f591e9cb62e9adcb3d1c2afec91"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/0b/65/bad3eb64f30657ee9fa2e00e80b3ad42037db5eb534fadd15a94a11fe979/configparser-6.0.0.tar.gz"
    sha256 "ec914ab1e56c672de1f5c3483964e68f71b34e457904b7b76e06b922aec067a8"
  end

  resource "et" do
    url "https://files.pythonhosted.org/packages/2d/34/18dba58f737dbf2b697f95a0339469abbe539297bf4a74323062a16650ea/et-0.0.2.tar.gz"
    sha256 "d9ccb5767e0b89cf1f670e88e088039cc9c0c7cf0e7949b286ee21456a511e5a"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/3f/ff/5fd9375f3fe467263cff9cad9746fd4c4e1399440ea9563091c958ff90b5/s3transfer-0.7.0.tar.gz"
    sha256 "fd3889a66f5fe17299fe75b82eae6cf722554edca744ca5d5fe308b104883d2e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/dd/19/9e5c8b813a8bddbfb035fa2b0c29077836ae7c4def1a55ae4632167b3511/urllib3-1.26.17.tar.gz"
    sha256 "24d6a242c28d29af46c3fae832c36db3bbebcc533dd1bb549172cd739c82df21"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
