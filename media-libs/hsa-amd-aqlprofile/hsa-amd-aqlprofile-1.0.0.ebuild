# Copyright
# 

EAPI=6
inherit unpacker

DESCRIPTION="hsa-amd-aqlprofile"
HOMEPAGE="https://github.com/RadeonOpenCompute/ROCm"
SRC_URI="http://repo.radeon.com/rocm/apt/debian/pool/main/h/hsa-amd-aqlprofile/hsa-amd-aqlprofile_1.0.0_amd64.deb"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack(){
        unpack_deb ${A}
}

src_install() {
	dolib.so "${S}/opt/rocm/hsa-amd-aqlprofile/lib/libhsa-amd-aqlprofile64.so.1.0.0"
	dosym "libhsa-amd-aqlprofile64.so.1.0.0" "/usr/$(get_libdir)/libhsa-amd-aqlprofile64.so"
	dosym "libhsa-amd-aqlprofile64.so.1.0.0" "/usr/$(get_libdir)/libhsa-amd-aqlprofile64.so.1"
}
