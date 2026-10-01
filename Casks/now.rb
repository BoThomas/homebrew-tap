cask "now" do
  version "2.3.0"
  sha256 "3b56f76ece82b79d0bb237689d66cd5c49b8b34cf7e46a9ea02784e4d6d918dd"

  url "https://github.com/BoThomas/now/releases/download/v#{version}/now-v#{version}.zip"
  name "now"
  desc "Menu bar meeting reminders"
  homepage "https://github.com/BoThomas/now"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "now.app"

  # The app is signed but not notarized. Homebrew quarantines every download
  # (the --no-quarantine flag no longer exists), so remove the attribute here
  # to keep first launch unblocked. must_succeed: false because xattr exits
  # non-zero when the attribute is already absent.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/now.app"],
        must_succeed: false
  end
end
