class EnHeReplace < Formula
  desc "Replace English text with Hebrew equivalents on macOS"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/vREPLACE_WITH_VERSION/en-he-replace-macos.zip"
  sha256 "REPLACE_WITH_ZIP_SHA"
  version "REPLACE_WITH_VERSION"

  def install
    bin.install "en-he-replace"
    libexec.install "resources"
  end

def post_install
  user_home = ENV["HOME"]
  services_dir = File.join(user_home, "Library/Services")
  workflow_src = libexec/"resources/en<->he.workflow"
  workflow_dst = File.join(services_dir, "en<->he.workflow")

  mkdir_p services_dir
  rm_rf workflow_dst
  cp_r workflow_src, workflow_dst
end
  def caveats
    <<~EOS
      To uninstall completely, run:

        rm -rf ~/Library/Services/en\\<-\\>he.workflow

      Then refresh Services if needed:
        killall -u "$USER" pbs
    EOS
  end
end