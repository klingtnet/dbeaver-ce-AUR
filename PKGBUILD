# Copied and modified from https://aur.archlinux.org/packages/dbeaver-ee/
# Maintainer: Andreas Linz <klingt.net+aur@gmail.com>
# Original Maintainer: John Sivak <jsivak@winterjewel.com>
# Previous Maintainer: Joseph Post <joe@jcpst.com>
# Previous Maintainer: Stephan Wienczny <stephan@wienczny.de>

pkgname=dbeaver
pkgver=5.1.6
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
sha256sums_i686=('c42fc44c6fbf0c118d3a7e9a2820ee050bbf320ac115004d2839e7419666ab9c')
sha256sums_x86_64=('d60ac0bcda90633fba89ca5088e7fb7095a285fe4787b45d35d546e86d53d7ff')

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
