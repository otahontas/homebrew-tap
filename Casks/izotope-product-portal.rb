cask "izotope-product-portal" do
  version "1.3.8"
  sha256 "111db6bcef7702160449021c793959225a84c182fa9eaf069a0453c7d11f53a0"
  url "https://s3.amazonaws.com/izotopedownloads/product_download/iZotope_Product_Portal_v#{version.major}_#{version.minor}_#{version.patch}.dmg", verified: "amazonaws.com/izotopedownloads"
  name "iZotope Product Portal"
  desc "Application that allows you to manage your iZotope software."
  homepage "https://support.izotope.com/hc/en-us/articles/360025586834-Welcome-to-iZotope-Product-Portal"

  auto_updates true

  installer script: {
    executable: "Install Product Portal.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall quit:    "com.izotope.productportal.app",
            delete:  "/Applications/iZotope Product Portal.app"

end
