# Copied and modified from https://aur.archlinux.org/packages/dbeaver-ee/
# Maintainer: Andreas Linz <klingt.net+aur@gmail.com>
# Original Maintainer: John Sivak <jsivak@winterjewel.com>
# Previous Maintainer: Joseph Post <joe@jcpst.com>
# Previous Maintainer: Stephan Wienczny <stephan@wienczny.de>

pkgname=dbeaver
pkgver=5.0.5
pkgrel=1
pkgdesc="A universal database tool for developers and database administrators. Enterprise Edition includes NoSQL database support"
arch=('i686' 'x86_64')
url="http://dbeaver.com/"
license=("GPL")
depends=('java-runtime>=1.6' 'gtk2' 'gtk-update-icon-cache')
install=dbeaver.install

source=(dbeaver.desktop dbeaver.install)
source_i686=(https://dbeaver.jkiss.org/files/${pkgver}/dbeaver-ce-${pkgver}-linux.gtk.x86.tar.gz)
source_x86_64=(https://dbeaver.jkiss.org/files/${pkgver}/dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz)
sha256sums=('d1365a1e1a9a7b3949fc1b9e9928e93b7d8b3d04b5d0eee7c37eaaa362466c47'
            'a54659b53f1966395f7e296d448c42e1165ec38f5db20181a9e294f775e1c43b')
sha256sums_i686=('6c36ec9fa1deec574423b4abdd579ffdbb650db34fd2cb014d130821aac67f23')
sha256sums_x86_64=('ea6b2fc2b1349388220da12626976eefd76dbb62bfeb609963328f86769e9ae5')

noextract=("dbeaver-ce-${pkgver}-linux.gtk.x86.tar.gz"
           "dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz")

prepare() {
    mkdir -p $srcdir/$pkgname
    cd $srcdir/$pkgname
    if [ "$CARCH" = "x86_64" ]; then
        tar -xf "$srcdir/dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz"
    else
        tar -xf "$srcdir/dbeaver-ce-${pkgver}-linux.gtk.x86.tar.gz"
    fi
}

package() {
    cd $pkgdir
    mkdir -p opt/
    mkdir -p usr/bin
    mkdir -p usr/share/applications
    mkdir -p usr/share/icons/hicolor/48x48/apps

    cp -r $srcdir/$pkgname/dbeaver opt/$pkgname
    chmod +x opt/$pkgname/dbeaver
    cp opt/$pkgname/icon.xpm usr/share/icons/hicolor/48x48/apps/${pkgname}.xpm
    ln -s /opt/${pkgname}/dbeaver usr/bin/dbeaver
    install -m 644 $srcdir/dbeaver.desktop $pkgdir/usr/share/applications/
}
