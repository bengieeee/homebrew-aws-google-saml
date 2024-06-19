class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/6e/37/5aa8fd0581790be0d5699c164d5c49b8c2732e86c7e01c0b5a79b980e995/aws-google-saml-2023.1031.17.tar.gz"
  sha256 "41150d8deeb0b2b558897c9290238f3eb52f001ef5e78666e170e6b0cc9aa13b"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/b8/3d/2d97a60debafdedf6cb5446874de2b3eda5ca53da6548f35f763fb22c336/boto3-1.34.129.tar.gz"
    sha256 "a7a696fd3e7f5f43a81450b441f3eb6c5a89d28efe867cd97d8fc73ea5d8c139"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/aa/5c/803c1fad4d0c9bb4fd025e03b2b5e85d8e31e524271ec75d857150ebbfb5/botocore-1.34.129.tar.gz"
    sha256 "7c56e25af6112d69c5d14a15b42f76ba7687687abc463a96ac5edca19c0a9c2d"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/83/bc/fb0c1f76517e3380eb142af8a9d6b969c150cfca1324cea7d965d8c66571/s3transfer-0.10.1.tar.gz"
    sha256 "5683916b4c724f799e600f41dd9e10a9ff19871bf87623cc8f491cb4f5fa0a19"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/43/6d/fa469ae21497ddc8bc93e5877702dca7cb8f911e337aca7452b5724f1bb6/urllib3-2.2.2.tar.gz"
    sha256 "dd505485549a7a552833da5e6063639d0d177c04f23bc3864e41e5dc5f612168"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
