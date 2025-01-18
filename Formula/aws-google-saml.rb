class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/3a/e9/c0b2fa75efc4007ea1af21bc2fcbedf6e545c517fb90904d7f59850e02bf/boto3-1.36.2.tar.gz"
    sha256 "fde1c29996b77274a60b7bc9f741525afa6267bb1716eb644a764fb7c124a0d2"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/c6/93/353b70cea6447e37789fc2d6f761fc12ae36fb4adb6f558055de8cdf655f/botocore-1.36.2.tar.gz"
    sha256 "a1fe6610983f0214b0c7655fe6990b6a731746baf305b182976fc7b568fc3cb0"
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
    url "https://files.pythonhosted.org/packages/1a/aa/fdd958c626b00e3f046d4004363e7f1a2aba4354f78d65ceb3b217fa5eb8/s3transfer-0.11.1.tar.gz"
    sha256 "3f25c900a367c8b7f7d8f9c34edc87e300bde424f779dc9f0a8ae4f9df9264f6"
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
