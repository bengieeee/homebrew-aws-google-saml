class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/6e/37/5aa8fd0581790be0d5699c164d5c49b8c2732e86c7e01c0b5a79b980e995/aws-google-saml-2023.1031.17.tar.gz"
  sha256 "41150d8deeb0b2b558897c9290238f3eb52f001ef5e78666e170e6b0cc9aa13b"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/59/ac/01d0a0a231e9e11a4e2bfa86414e2d8acfd4755ecb1f3c5109dcb0906743/boto3-1.34.62.tar.gz"
    sha256 "7373e50b97e27f55c5b2a15a095e7bb45a7d962ced4d1468650dced57087c56b"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/04/35/f0a45828aab5ac0056d948268c036857908512320510b66448821ae69e71/botocore-1.34.62.tar.gz"
    sha256 "7e97e7237c50d50850fef0d2cc6c8c42965d236a13abf18b29e5b8bb427514d7"
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
