class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/47/b8/77a951fdcf732af2982f0f212a9419882163211956069bff9d58e242ce65/boto3-1.38.28.tar.gz"
    sha256 "69395075d54be4552719ccadad9f65a3dee5bb3751701e8851d65d71974a791d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/19/8c/6fb5a271e6da62377fd0e9dc5cff00343ae7c8b83130f14985f7b3924f0c/botocore-1.38.28.tar.gz"
    sha256 "63d5977a10a375c3fc11c8e15e1ae5a4daaf450af135d55c170cc537648edf25"
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
    url "https://files.pythonhosted.org/packages/ed/5d/9dcc100abc6711e8247af5aa561fc07c4a046f72f659c3adea9a449e191a/s3transfer-0.13.0.tar.gz"
    sha256 "f5e6db74eb7776a37208001113ea7aa97695368242b364d73e91c981ac522177"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/8a/78/16493d9c386d8e60e442a35feac5e00f0913c0f4b7c217c11e8ec2ff53e0/urllib3-2.4.0.tar.gz"
    sha256 "414bc6535b787febd7567804cc015fee39daab8ad86268f1310a9250697de466"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
