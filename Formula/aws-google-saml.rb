class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/6e/37/5aa8fd0581790be0d5699c164d5c49b8c2732e86c7e01c0b5a79b980e995/aws-google-saml-2023.1031.17.tar.gz"
  sha256 "41150d8deeb0b2b558897c9290238f3eb52f001ef5e78666e170e6b0cc9aa13b"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/01/73/b02f13ba277993c4b0f237d78bfa572b0ee06483e685140118b004b1d76e/boto3-1.34.46.tar.gz"
    sha256 "eb5d84c2127ffddf8e7f4dd6f9084f86cb18dca8416fb5d6bea278298cf8d84c"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/4a/2b/c62910b4c6983394590fddc46d0b3a44b4fcb726a0c1428cd56b92482241/botocore-1.34.46.tar.gz"
    sha256 "21a6c391c6b4869aed66bc888b8e6d54581b343514cfe97dbe71ede12026c3cc"
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
    url "https://files.pythonhosted.org/packages/a0/b5/4c570b08cb85fdcc65037b5229e00412583bb38d974efecb7ec3495f40ba/s3transfer-0.10.0.tar.gz"
    sha256 "d0c8bbf672d5eebbe4e57945e23b972d963f07d82f661cabf678a5c88831595b"
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
