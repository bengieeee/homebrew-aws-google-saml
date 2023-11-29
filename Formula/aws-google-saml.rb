class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/6e/37/5aa8fd0581790be0d5699c164d5c49b8c2732e86c7e01c0b5a79b980e995/aws-google-saml-2023.1031.17.tar.gz"
  sha256 "41150d8deeb0b2b558897c9290238f3eb52f001ef5e78666e170e6b0cc9aa13b"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/9d/4d/09a3eb00e6d017dafae80c6ea307992263405aad315587e0b63864ae97e5/boto3-1.33.2.tar.gz"
    sha256 "70626598dd6698d6da8f2854a1ae5010f175572e2a465b2aa86685c745c1013c"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/d5/73/40c9dd27acb7fad5d13259c406d305e4452f927d1b1dd16eee79586f5f9c/botocore-1.33.2.tar.gz"
    sha256 "16a30faac6e6f17961c009defb74ab1a3508b8abc58fab98e7cf96af0d91ea84"
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
    url "https://files.pythonhosted.org/packages/d3/8c/babd90ebb61a8ce1ade0dc1f87e067287f7d97bf84d5ded1c4cc3fed5134/s3transfer-0.8.1.tar.gz"
    sha256 "e6cafd5643fc7b44fddfba1e5b521005675b0e07533ddad958a3554bc87d7330"
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
