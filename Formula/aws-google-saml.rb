class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/e5/3f/03033eaacd043e5c905c74f9067ebcf3a4a24fb852fa3f4745f87327f0e7/boto3-1.37.27.tar.gz"
    sha256 "ccdeee590902e6f4fb30cec6d3a88668545817fccfd3e5cb9cbc166c4a0000d4"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/53/3f/597ca9de62d00556a2c387261293441d9e84fa196a7031ec656deffe8aee/botocore-1.37.27.tar.gz"
    sha256 "143fd7cdb0d73f43aa1f14799124de7b857da7d7ab996af5c89a49e3032a9e66"
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
    url "https://files.pythonhosted.org/packages/0f/ec/aa1a215e5c126fe5decbee2e107468f51d9ce190b9763cb649f76bb45938/s3transfer-0.11.4.tar.gz"
    sha256 "559f161658e1cf0a911f45940552c696735f5c74e64362e515f333ebed87d679"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
