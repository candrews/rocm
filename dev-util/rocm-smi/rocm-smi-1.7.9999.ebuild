# Copyright
# 

EAPI=6
inherit git-r3

DESCRIPTION="ROCm System Management Interface"
HOMEPAGE="https://github.com/RadeonOpenCompute/ROC-smi"
EGIT_REPO_URI="https://github.com/RadeonOpenCompute/ROC-smi"
EGIT_BRANCH="roc-1.7.x"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="media-libs/ROCR-Runtime"

src_compile() {
	einfo "Nothing todo"
}

src_install() {
	exeinto /opt/rocm/bin
	doexe ${S}/rocm-smi
}
