class AwsLaziness < Formula
  desc ""
  homepage "https://github.com/funollet/aws-laziness/"
  url "https://github.com/funollet/aws-laziness/archive/v0.1.0.tar.gz"
  sha256 "d414687be5d7395926aaa2b103956531cae0fa9106ea5828dfb5453bd5b481f4"

  depends_on "fzf"
  depends_on "jq"

  bottle :unneeded

  def install
    bin.install "ec2ssh"
    bin.install "ecsssh"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aws-laziness`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
