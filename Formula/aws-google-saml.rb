class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/25/d8/f7bc41e01e83eaad1ec297cfb675c1f98cc59450b1f4a76b93a1e31a2b09/boto3-1.35.29.tar.gz"
    sha256 "7bbb1ee649e09e956952285782cfdebd7e81fc78384f48dfab3d66c6eaf3f63f"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/41/23/482871ed269fa0c832f98c840686b4ef18662b3fb800eab48a48817d286c/botocore-1.35.29.tar.gz"
    sha256 "4ed28ab03675bb008a290c452c5ddd7aaa5d4e3fa1912aadbdf93057ee84362b"
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
    url "https://files.pythonhosted.org/packages/cb/67/94c6730ee4c34505b14d94040e2f31edf144c230b6b49e971b4f25ff8fab/s3transfer-0.10.2.tar.gz"
    sha256 "0711534e9356d3cc692fdde846b4a1e4b0cb6519971860796e6bc4c7aea00ef6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ed/63/22ba4ebfe7430b76388e7cd448d5478814d3032121827c12a2cc287e2260/urllib3-2.2.3.tar.gz"
    sha256 "e7d814a81dad81e6caf2ec9fdedb284ecc9c73076b62654547cc64ccdcae26e9"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
