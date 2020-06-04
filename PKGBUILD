# Copied and modified from https://aur.archlinux.org/packages/dbeaver-ee/
# Maintainer: Andreas Linz <klingt.net+aur@gmail.com>
# Original Maintainer: John Sivak <jsivak@winterjewel.com>
# Previous Maintainer: Joseph Post <joe@jcpst.com>
# Previous Maintainer: Stephan Wienczny <stephan@wienczny.de>

pkgname=dbeaver
pkgver=7.1.0
pkgrel=1
pkgdesc="A universal database tool for developers and database administrators. Enterprise Edition includes NoSQL database support"
arch=('i686' 'x86_64')
url="http://dbeaver.com/"
license=("GPL")
depends=('java-runtime>=1.6' 'gtk2' 'gtk-update-icon-cache')
install=dbeaver.install

source=(dbeaver.desktop dbeaver.install)
source_x86_64=(https://dbeaver.io/files/${pkgver}/dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz)
sha256sums=('d1365a1e1a9a7b3949fc1b9e9928e93b7d8b3d04b5d0eee7c37eaaa362466c47'
            'a54659b53f1966395f7e296d448c42e1165ec38f5db20181a9e294f775e1c43b')
sha256sums_x86_64=('cb66f0227315fa2ef1e314031564855836eac4703b0ac30e2b5c8e0adf2a6ee0')

noextract=("dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz")

prepare() {
    mkdir -p $srcdir/$pkgname
    cd $srcdir/$pkgname
    tar -xf "$srcdir/dbeaver-ce-${pkgver}-linux.gtk.x86_64.tar.gz"
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
