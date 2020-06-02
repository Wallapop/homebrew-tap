class AwsLaziness < Formula
  desc "SSH helpers for AWS EC2/ECS instances"
  homepage "https://github.com/funollet/aws-laziness/"
  url "https://github.com/funollet/aws-laziness/archive/v0.2.1.tar.gz"
  sha256 "37828f3641274275f191af71e397cf7ad3fba44096f353de0a696350569c3b34"

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
