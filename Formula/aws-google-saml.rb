class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/fc/b7/da04a673ce483f53ff25beaee9b25250c9aec20ce3dbaf4e7c8de95100fa/aws-google-saml-2023.1014.14.tar.gz"
  sha256 "08ecc8db41292fa034e3261652c58a877a0f61b44f2102978c8807642af522bc"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/67/c6/0baa9f7193b6defe6238b5b1b512be434cb54bdb32f949b8d8823e860e2c/boto3-1.28.64.tar.gz"
    sha256 "a5cf93b202568e9d378afdc84be55a6dedf11d30156289fe829e23e6d7dccabb"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/01/98/3635fd827cd7f758d2010e7bb432853c37b14d58b7bc728d0797d0199480/botocore-1.31.64.tar.gz"
    sha256 "d8eb4b724ac437343359b318d73de0cfae0fecb24095827e56135b0ad6b44caf"
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
    url "https://files.pythonhosted.org/packages/8b/00/db794bb94bf09cadb4ecd031c4295dd4e3536db4da958e20331d95f1edb7/urllib3-2.0.6.tar.gz"
    sha256 "b19e1a85d206b56d7df1d5e683df4a7725252a964e3993648dd0fb5a1c157564"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
