class EnHeReplace < Formula
  desc "Replace English text with Hebrew equivalents on macOS"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/vREPLACE_WITH_VERSION/en-he-replace-macos.zip"
  sha256 "REPLACE_WITH_ZIP_SHA"
  version "REPLACE_WITH_VERSION"

  def install
    bin.install "en-he-replace"
    pkgshare.install "resources/en<->he.workflow"
  end

  def post_install
    services_dir = File.expand_path("~/Library/Services")
    mkdir_p services_dir unless Dir.exist?(services_dir)
    cp_r pkgshare/"resources/en<->he.workflow", services_dir
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