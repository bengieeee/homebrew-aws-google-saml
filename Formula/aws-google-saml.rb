class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/af/ca/09fb332e8bab219df4832337978d7c8227571b86fdcfb28355f591cf544f/boto3-1.35.59.tar.gz"
    sha256 "81f4d8d6eff3e26b82cabd42eda816cfac9482821fdef353f18d2ba2f6e75f2d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/ff/19/f4609e3f9ae2c166fd1350e9128b647f9a1d3ecd2e01db08cd0227c2b9e0/botocore-1.35.59.tar.gz"
    sha256 "de0ce655fedfc02c87869dfaa3b622488a17ff37da316ef8106cbe1573b83c98"
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
    url "https://files.pythonhosted.org/packages/a0/a8/e0a98fd7bd874914f0608ef7c90ffde17e116aefad765021de0f012690a2/s3transfer-0.10.3.tar.gz"
    sha256 "4f50ed74ab84d474ce614475e0b8d5047ff080810aac5d01ea25231cfc944b0c"
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
