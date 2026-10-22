#!/usr/bin/env sh
# MSI product versions must be numeric, so MSI_VERSION (e.g. 2.36.19.1) is used when set.
candle src/saml2aws.wxs -dSaml2AwsVer=${MSI_VERSION:-$VERSION} -o "out/"
light -sval "out/saml2aws.wixobj" -o "out/saml2aws_${VERSION}_windows_amd64.msi"
