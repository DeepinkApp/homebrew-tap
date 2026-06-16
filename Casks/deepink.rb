# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "deepink" do
  version "0.2.0"
  sha256 "ecf599909828e7e82f3fc4a5599577cb5c07ad9fe4f4d858d37ffb2a03d8754c"

  url "https://github.com/DeepinkApp/deepink/releases/download/v#{version}/deepink-darwin-arm64-#{version}.zip",
    verified: "github.com/DeepinkApp/deepink"
  name "deepink"
  desc "A better place for your notes."
  homepage "https://deepink.app/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Deepink.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: []
end
