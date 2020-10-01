class AwsLaziness < Formula
  desc "SSH helpers for AWS EC2/ECS instances"
  homepage "https://github.com/funollet/aws-laziness/"
  url "https://github.com/funollet/aws-laziness/archive/v0.2.2.tar.gz"
  sha256 "10d8282e503dc301cd516af1eb81d8079b290a5cfe0830cf6e11476749707ae6"

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
