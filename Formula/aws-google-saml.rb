class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/fc/b7/da04a673ce483f53ff25beaee9b25250c9aec20ce3dbaf4e7c8de95100fa/aws-google-saml-2023.1014.14.tar.gz"
  sha256 "08ecc8db41292fa034e3261652c58a877a0f61b44f2102978c8807642af522bc"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/97/a1/d30d1f8e5b6a32222e2c8d0c01b976b91ca382ac7c70ed7df8f3d4cd7660/boto3-1.28.73.tar.gz"
    sha256 "a61cf96f7e196b1450afdf4856b7ea0e58080752e687b0011157be96934489be"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/35/82/09f64a0a79554b26b301a7cd1ee4ec75ae9658e315f593fa4fd35b154d76/botocore-1.31.73.tar.gz"
    sha256 "5334c22d5a3f4643931896137c57b2496fef005b039d87d8740e7a28eb31519d"
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
    url "https://files.pythonhosted.org/packages/af/47/b215df9f71b4fdba1025fc05a77db2ad243fa0926755a52c5e71659f4e3c/urllib3-2.0.7.tar.gz"
    sha256 "c97dfde1f7bd43a71c8d2a58e369e9b2bf692d1334ea9f9cae55add7d0dd0f84"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
