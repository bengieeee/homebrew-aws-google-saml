class AwsGoogleSaml < Formula
  include Language::Python::Virtualenv

  desc "A user browser driven SAML authentication tool for AWS"
  homepage "https://github.com/bengieeee/aws-google-saml"
  url "https://files.pythonhosted.org/packages/3e/89/8382720147070e0e2e5be8e8b1aab1204debb27e19bcf72481c5dfeed9b0/aws_google_saml-2024.716.3.tar.gz"
  sha256 "da31c6d13c83485b6c92027f56d4df8532263fd1749ea10cba1778b15877f784"

  depends_on "python3"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/56/7a/be6dfbe66f3a04434240edbb5425c0756f848af40c52194109afc0d265e9/boto3-1.37.32.tar.gz"
    sha256 "bc08c95a88ffeb51d78d25cb8bd72593b8cce1d8fdcc650030aff98c15437d04"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/8f/68/407e8a712694eab28ca95ca2f9135d66e92975a54a37dda1aeefd26f8cd5/botocore-1.37.32.tar.gz"
    sha256 "3e5d097690b3423adeefdf257384e964d0ba7f9575d77bf3f8998273b92ef700"
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
