class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/6e/37/5aa8fd0581790be0d5699c164d5c49b8c2732e86c7e01c0b5a79b980e995/aws-google-saml-2023.1031.17.tar.gz"
  sha256 "41150d8deeb0b2b558897c9290238f3eb52f001ef5e78666e170e6b0cc9aa13b"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/99/1e/0dfade9ee87863d2cf363d086fab6885491d3111a45ca976d2e1f785bc5b/boto3-1.33.7.tar.gz"
    sha256 "eed0f7df91066b6ac63a53d16459ac082458d57061bedf766135d9e1c2b75a6b"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/77/82/ccd0b8fae17f05d9db896981bc084f2e913b672e99f16aea631c8ff9d008/botocore-1.33.7.tar.gz"
    sha256 "b2299bc13bb8c0928edc98bf4594deb14cba2357536120f63772027a16ce7374"
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
    url "https://files.pythonhosted.org/packages/5f/cc/7e3b8305e22d7dcb383d4e1a30126cfac3d54aea2bbd2dfd147e2eff4988/s3transfer-0.8.2.tar.gz"
    sha256 "368ac6876a9e9ed91f6bc86581e319be08188dc60d50e0d56308ed5765446283"
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
