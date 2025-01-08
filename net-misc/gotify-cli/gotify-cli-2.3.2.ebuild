# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A command line interface for pushing messages to gotify/server."
HOMEPAGE="https://github.com/gotify/cli"
SRC_URI="https://github.com/gotify/cli/releases/download/v${PV}/gotify-cli-linux-amd64"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="strip"

src_unpack() {
	mkdir -p "${S}"
	cp "${DISTDIR}/gotify-cli-linux-amd64" "${S}"
}

src_install() {
	newbin gotify-cli-linux-amd64 gotify
	keepdir /etc/gotify
}
