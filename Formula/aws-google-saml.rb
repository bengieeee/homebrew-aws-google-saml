class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/4f/1f/ef8f2967570c221681056134d02e70ebd490b795c17cf44d52f898344fbd/boto3-1.43.15.tar.gz"
    sha256 "8dbb1a129c693313218a099d4f086f3bb48f50159b74b5bd8869e1037fde4101"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/93/06/4eb6a40f2a5861cd48743765a80e5a6534f26ec0e9884502572cfadeca50/botocore-1.43.15.tar.gz"
    sha256 "eed2e24962af03ec361a1dc6924f6b2cff0215a0a2f5c690eab655f43d1f700f"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/11/b3/bcdc2f58fa92592db511beda154c2c08d28f21f6c4637f06a42a24b10c21/s3transfer-0.17.1.tar.gz"
    sha256 "042dd5e3b1b512355e35a23f0223e426b7042e80b97830ea2680ddce327fc45e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  def install
    
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
