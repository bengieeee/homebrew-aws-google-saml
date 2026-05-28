class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/48/4f/f13d80d377b54dd2973e243e4eb7ce748706cd53876361cc72506006fd8b/boto3-1.43.16.tar.gz"
    sha256 "6c337bbe608aacc7d335c79e671f0c893870293b74d652f7a7af22ccd0dfef16"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/a1/74/140451a1fe027cb5e387cc7b1ec56224616ca742c330f1492f71c5cba3fb/botocore-1.43.16.tar.gz"
    sha256 "813dae233d8b365c19aaf7865b32070e34d7e793654881bf86ecbbef3f4ad5c6"
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
