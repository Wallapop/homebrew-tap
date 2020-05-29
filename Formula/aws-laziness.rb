class AwsLaziness < Formula
  desc "SSH helpers for AWS EC2/ECS instances"
  homepage "https://github.com/funollet/aws-laziness/"
  url "https://github.com/funollet/aws-laziness/archive/v0.2.0.tar.gz"
  sha256 "acf7e6250dc0a5184cadad9265dca7df0d7f25029104b37697bcf264bb12876a"

  depends_on "fzf"
  depends_on "jq"

  bottle :unneeded

  def install
    bin.install "ec2ssh"
    bin.install "ecsssh"
  end

  test do
    assert_match "Usage: ec2ssh", shell_output("#{bin}/ec2ssh --help")
    assert_match "Usage: ecsssh", shell_output("#{bin}/ecsssh --help")
  end
end
