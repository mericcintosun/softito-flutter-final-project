# VeVe Flutter App - Teknik Dokümantasyon

## SoftIto Yazılım ve Bilişim Akademisi Mobile App Developer Eğitimi Bitirme Projemi

---

## İçindekiler

1. [Proje Hakkında](#proje-hakkında)
2. [Teknik Mimarı](#teknik-mimarı)
3. [En Sık Kullandığım Widget'lar](#en-sık-kullandığım-widgetlar)
4. [Yeni Öğrendiklerim](#yeni-öğrendiklerim)
5. [Kullanılan Widget'lar](#kullanılan-widgetlar)
6. [Geliştirme Süreci](#geliştirme-süreci)
7. [Karşılaştığım Zorluklar](#karşılaştığım-zorluklar)
8. [Kullandığım Kütüphaneler](#kullandığım-kütüphaneler)
9. [Kurulum](#kurulum)
10. [Proje Özellikleri](#proje-özellikleri)
11. [Geliştirici Bilgileri](#geliştirici-bilgileri)
12. [İletişim](#iletişim)

---

## Proje Hakkında

VeVe projesi, dijital koleksiyon dünyasına odaklanan bir mobil uygulamadır. Bu proje ile kullanıcıların premium koleksiyonlar, çizgi romanlar ve sanat eserleri keşfetmelerini sağlamayı amaçladım. 

Uygulamanın temel amacı:
- Dijital koleksiyon deneyimi sunmak
- Kullanıcıların çizgi roman ve sanat eserlerini keşfetmelerini sağlamak
- Modern ve kullanıcı dostu arayüz ile koleksiyon yönetimi
- Marka ve lisanslı ürünlerin sergilendiği bir platform oluşturmak

---

## Teknik Mimarı

### Folder Structure

Projeyi geliştirirken clean architecture prensiplerini takip ederek şu yapıyı kurdum:

```
lib/
├── main.dart                    # Uygulama giriş noktası
├── routes.dart                  # Route tanımları
├── custom_widgets/              # Özel widget'lar
│   ├── appbar.dart
│   ├── floating_overlay.dart
│   └── footer.dart
└── views/                       # Sayfa widget'ları
    ├── auth/                    # Kimlik doğrulama sayfaları
    ├── brand/                   # Marka sayfaları
    ├── collectibles/            # Koleksiyon sayfaları
    ├── comics/                  # Çizgi roman sayfaları
    ├── home/                    # Ana sayfa ve widget'ları
    └── profile/                 # Profil sayfası
```

### Dart Dosyalarının İşlevleri

**main.dart:** MaterialApp kullanarak uygulamanın ana yapısını oluşturdum. Routes sistemi ile sayfalar arasında navigasyon sağladım ve onGenerateRoute ile dinamik parametreli sayfa geçişleri yaptım.

**routes.dart:** Static const String değişkenler ile route isimlerini merkezi bir yerde tuttum. Bu yapı route isimleri değiştiğinde tek yerden kontrol etmeyi sağlıyor.

**custom_widgets/appbar.dart:** AppBar widget'ı ana navigasyon için kullandım ve showModalBottomSheet ile mobil menü açtım. GestureDetector ile logo tıklamalarını yakalayarak ana sayfaya yönlendirme yaptım.

**custom_widgets/floating_overlay.dart:** Stack widget'ı ile sayfalar üzerine sabit konumlu öğeler yerleştirdim. Positioned widget'ları ile cookie ikonu ve feedback butonu sayfanın köşelerine sabitlemeyi sağladım.

**views/auth/login_page.dart:** TextEditingController ile form verilerini yönettim ve validation fonksiyonları ile kullanıcı girişlerini kontrol ettim. TextField widget'larında decoration ile görsel tasarım ve hata mesajları gösterdim.

**views/profile/profile_page.dart:** TextEditingController ile profil form verilerini yönettim ve Switch widget'ı ile gizlilik ayarını kontrol ettim. SVG asset'ler ile profil ikonları gösterdim ve gradient Container ile profil kartı oluşturdum.

Her sayfada responsive design için EdgeInsets padding'ler kullandım ve consistent color schemes ile uygulama genelinde tutarlı görsel tema sağladım.

---

## En Sık Kullandığım Widget'lar

Projemi geliştirirken en çok şu widget'ları kullandım:

1. **Container** - Layout ve styling için
2. **Column/Row** - Widget'ları düzenlemek için
3. **ListView.builder** - Dinamik listeler oluşturmak için
4. **TextField** - Form girişleri için
5. **ElevatedButton** - Etkileşimli butonlar için
6. **Image.asset** - Görsel içerikleri göstermek için
7. **SizedBox** - Spacing ve boyutlandırma için
8. **GestureDetector** - Touch etkileşimleri için

---

## Yeni Öğrendiklerim

Derste çok sık üzerine değinilmeyen konular ve yeni öğrendiklerim:

### 1. PreferredSizeWidget
Custom AppBar oluştururken Scaffold'ın ne kadar yükseklik bırakacağını belirtmek için kullandım. Normal widget'lardan farklı olarak boyut bilgisi veriyor.

### 2. DropdownButtonHideUnderline
Dropdown button'un altında varsayılan olarak gelen Material Design çizgisini gizlemek için kullandım. Custom tasarım yaparken bu çizgi görünümü bozuyordu.

### 3. showModalBottomSheet
Mobil uygulamalarda ekranın altından yukarı doğru çıkan modal pencere oluşturmak için kullandım. Hamburger menü için ideal bir çözüm oldu.

### 4. SvgPicture (flutter_svg package)
Vector grafikleri Flutter'da göstermek için kullandım. SVG dosyaları kalite kaybı olmadan büyütüp küçültülebildiği için logo ve ikonlar için tercih ettim.

### 5. routes.dart File Structure
Tüm route isimlerini tek bir sınıfta topladım. Hard-coded string'ler yerine constant değişkenler kullanarak typo hatalarını önledim.

### 6. onGenerateRoute
Dinamik route'lar oluşturmak için kullandım. Özellikle sayfa geçişlerinde parametre göndermek gerektiğinde çok işime yaradı.

### 7. RegExp Form Validasyonu
Regular Expression kullanarak form alanlarını doğruladım. E-mail formatı ve güçlü parola kuralları için kullandım.

### 8. Switch Widget
Açık/kapalı durumları için kullandım. Profil gizlilik ayarları için ideal oldu.

### 9. Consistent Color Schemes
Uygulama genelinde aynı renk paletini kullanarak görsel tutarlılık sağladım. Brand identity'yi korumak için önemliydi.

---

## Kullandığım Widget'ların Tam Listesi

### Temel Layout Widget'ları:
- Column, Row, Container, Expanded, Flexible, Stack, Positioned, SizedBox, Padding, Center

### Scaffold & Navigation:
- Scaffold, AppBar, MaterialApp, MaterialPageRoute, Navigator, PreferredSizeWidget

### Scrolling Widget'ları:
- SingleChildScrollView, ListView, ListView.builder

### Text & Input:
- Text, TextField, TextFormField, RichText, TextSpan

### Buttons:
- ElevatedButton, TextButton, IconButton

### Media:
- Image (Image.asset), SvgPicture, ClipRRect

### Interactive:
- GestureDetector, InkWell, Switch, Checkbox, DropdownButton, DropdownMenuItem, DropdownButtonHideUnderline

### Display:
- Icon, CircleAvatar, Divider, ListTile, SnackBar

### Styling:
- BoxDecoration, BorderRadius, LinearGradient, DecorationImage, Border, OutlineInputBorder, InputDecoration, Spacer, EdgeInsets

### Custom Widget'larım:
- AppBarNav, FloatingOverlay, Footer, HeroSection, VeveCollectibles, CtaButtons

### State Management:
- StatelessWidget, StatefulWidget

---

## Geliştirme Süreci

Projeyi geliştirirken adım adım şunları yaptım:

1. **Folder structure'u oluşturdum** ve pubspec.yaml dosyasında assetleri tanımladım.

2. **Sayfa tasarımları yaptım** ve tasarım esnasında özellikle derste kullanmadığımız widget'ları ve yapıları kullanmaya gayret ettim.

3. **Navigator'ları tanımladım** ve routes.dart dosyasını oluşturdum.

4. **Form validasyonlarını tamamladım** ve TextField'lar için controller'ları ekledim.

5. **Custom widget'lar oluşturdum** - projemdeki uzun satırlı kodları custom widget'lar olarak ayırdım ve projenin kodlarını daha okunabilir kıldım.

6. **Son kontrolleri yaptım** - proje çalışır hale geldikten sonra ufak tefek layout sorunlarını düzelttim ve projeyi genel olarak test ettim.

7. **Test sürecini tamamladım** - Android ve iOS emülatörlerinde projeyi farklı zamanlarda 2-3 kere çalıştırdıktan sonra projeyi APK olarak build aldım ve kendi Android telefonumda da ekstra test ettim.

8. **Proje teslimini yaptım** - tüm kontrolleri yaptıktan sonra projemi GitHub'a yükledim ve proje açıklama videosunu çekerek sürecimi tamamladım.

---

## Karşılaştığım Zorluklar

1. **Layout tutarlılığı sorunu:** Tasarım konusunda çok fazla sayfa tasarladığım için ortak bir layout belirlemek zor oldu. Bu problemi sabit olan widget'ları const'lar olarak tanımlayarak çözdüm ve her sayfada aynı padding ve size değerlerini vermeye dikkat ettim.

2. **StatefulWidget dinamikliği:** Özellikle projede tasarımdan daha çok Dart kodlarını ve StatefulWidget'lardaki dinamikliği inşa ederken çok fazla problem yaşadım. Bol hata aldığım bir süreçti ve özellikle profile sayfasında veriler değişir değişmez anlık olarak o sayfada da değişme kısmını yaparken çok zorlandım.

3. **Widget modülarizasyonu:** Projeyi widget'lara ayırmaya çalışırken çok problem yaşadım. Bu nedenle bütün sayfaları widget'lara ayırmaya zamanım yetmedi ve bu sürecin uzun olduğunu deneyimlemiş oldum. Bir dahaki projelerimde daha sistemli ilerleyeceğim.

4. **Zaman yönetimi:** Projeyi deadline'a göre tamamlamak epey zor oldu, bol bol gece mesaisi yaptığım için genellikle eğitimlere uykusuz gittim. 😊

---

## Kullandığım Kütüphaneler

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_svg: ^2.0.10+1  # SVG dosyaları için
  cupertino_icons: ^1.0.8  # iOS style ikonlar için

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0
```

**flutter_svg:** Logo, ikon ve sosyal medya simgelerini göstermek için kullandım. Vector grafiklerin kalite kaybı olmadan ölçeklenmesi için gerekli.

---

## Kurulum

Projeyi kendi localinizde nasıl çalıştırabilirsiniz:

### Gereksinimler
- Flutter SDK (3.0.0 veya üzeri)
- Dart SDK
- Android Studio veya VS Code
- Android/iOS Emülatör veya fiziksel cihaz

### Adımlar

1. **Repository'yi klonlayın:**
```bash
git clone [repository-url]
cd veve-flutter
```

2. **Veve klasörüne gidin:**
```bash
cd veve
```

3. **Dependencies'leri yükleyin:**
```bash
flutter pub get
```

4. **Uygulamayı çalıştırın:**
```bash
flutter run
```

### Troubleshooting
- Eğer SVG görselleri görünmüyorsa `flutter clean` ve `flutter pub get` komutlarını çalıştırın
- Asset yüklenme sorunu yaşarsanız pubspec.yaml dosyasındaki asset path'lerini kontrol edin

---

## Proje Özellikleri

- **Ana Sayfa:** Hero section ve brand galerisi
- **Comics Sayfası:** Çizgi roman koleksiyonu ve detay sayfaları
- **Collectibles:** Koleksiyon öğeleri showcase'i
- **Brands:** Marka listeleri ve kategorilendirme
- **Profil Yönetimi:** Kullanıcı profili ve ayarlar
- **Authentication:** Login ve register sayfaları
- **Responsive Design:** Farklı ekran boyutlarına uyumlu
- **Custom Widgets:** Yeniden kullanılabilir bileşenler
- **Form Validation:** RegExp ile güçlü form kontrolleri
- **Smooth Navigation:** Modal bottom sheet ve gesture tabanlı navigasyon

---

## Geliştirici Bilgileri

**Proje Türü:** Flutter Mobile Application  
**Geliştirme Süresi:** 2 hafta  
**Eğitim:** SoftIto Yazılım ve Bilişim Akademisi Mobile App Developer  
**Seviye:** Junior Developer Bitirme Projesi  
**Platform:** Android & iOS  

### Teknolojiler
- **Frontend:** Flutter/Dart
- **UI/UX:** Material Design
- **State Management:** StatefulWidget
- **Navigation:** Named Routes + onGenerateRoute
- **Assets:** SVG + Raster Images
- **Form Validation:** RegExp

---

## İletişim

Bu proje hakkında sorularınız varsa benimle iletişime geçebilirsiniz:

- **GitHub:** [https://github.com/mericcintosun]
- **LinkedIn:** [https://www.linkedin.com/in/meric-cintosun/]  
- **Email:** [contact@mericcintosun.com]

---

*Bu dokümantasyon SoftIto Yazılım ve Bilişim Akademisi Mobile App Developer Eğitimi kapsamında hazırlanmıştır.* 