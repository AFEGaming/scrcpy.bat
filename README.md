# scrcpy (v3.1)

<img src="https://github.com/Genymobile/scrcpy/raw/master/app/data/icon.svg" width="128" height="128" alt="scrcpy" align="right" />

**scrcpy:** "**scr**een **c**o**py**"

Bu uygulama, Android cihazlarını USB veya TCP/IP üzerinden bağlayarak ekran ve sesini yansıtır ve cihazı bilgisayarın klavye ve fare ile kontrol etmenizi sağlar. _Root_ erişimi gerektirmez. Windows üzerinde çalışır.


## Özellikler

- **AFE yine yaptın yabacağnı**: Ne diyim düz scrcpy işte..
- **eee açık kaynak 👍**
- **Bence bu kadar yeter** 

## Gereksinimler

Android cihazı en az API 21 (Android 5.0) gerektirir.

Ses iletimi , API >= 30 (Android 11+) için desteklenir.

Cihazınızda [USB hata ayıklamayı](https://developer.android.com/studio/debug/dev-options#enable) etkinleştirdiğinizden emin olun.

Bazı cihazlarda (özellikle Xiaomi), hata ile karşılaşabilirsiniz:

**USB Hata ayıklama ek özelliklerin açık olduğundan emin olun ve tekrar deneyin olmazsada *scrcpy'nin ana reposuna issues* bölümüne yazın işte.**

İşte istediğiniz md dosyasının Türkçeye çevrilmiş hali:

# Kısayollar

Eylemler, scrcpy penceresinde klavye ve fare kısayolları kullanılarak yapılabilir.

Aşağıdaki listede, <kbd>MOD</kbd>, kısayol değiştirme tuşudur. Varsayılan olarak, bu tuş (sol) <kbd>Alt</kbd> veya (sol) <kbd>Super</kbd>'dir.

`--shortcut-mod` kullanılarak değiştirilebilir. Mümkün olan tuşlar: `lctrl`, `rctrl`, `lalt`, `ralt`, `lsuper` ve `rsuper`. Örnek:

```bash
# Kısayollar için RCtrl kullan
scrcpy --shortcut-mod=rctrl

# Kısayollar için ya LCtrl ya da LSuper kullan
scrcpy --shortcut-mod=lctrl,lsuper
```

_<kbd>[Super]</kbd>, genellikle <kbd>Windows</kbd> veya <kbd>Cmd</kbd> tuşudur._

[Super]: https://en.wikipedia.org/wiki/Super_key_(keyboard_button)

 | Eylem                                        |   Kısayol
 | -------------------------------------------- |:------------------------------
 | Tam ekran moduna geç                        | <kbd>MOD</kbd>+<kbd>f</kbd>
 | Ekranı sola döndür                          | <kbd>MOD</kbd>+<kbd>←</kbd> _(sol)_
 | Ekranı sağa döndür                          | <kbd>MOD</kbd>+<kbd>→</kbd> _(sağ)_
 | Ekranı yatayda çevir                         | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>←</kbd> _(sol)_ \| <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>→</kbd> _(sağ)_
 | Ekranı dikeyde çevir                        | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>↑</kbd> _(yukarı)_ \| <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>↓</kbd> _(aşağı)_
 | Ekranı duraklat veya tekrar başlat          | <kbd>MOD</kbd>+<kbd>z</kbd>
 | Ekranı duraklatmayı kaldır                  | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>z</kbd>
 | Video kaydını/encode'ı sıfırla              | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd>
 | Pencereyi 1:1 (piksel mükemmel) boyutuna getir | <kbd>MOD</kbd>+<kbd>g</kbd>
 | Pencereyi siyah kenarlıkları kaldıracak şekilde boyutlandır | <kbd>MOD</kbd>+<kbd>w</kbd> \| _Çift tıklama¹_
 | `HOME` tuşuna tıkla                         | <kbd>MOD</kbd>+<kbd>h</kbd> \| _Orta tıklama_
 | `BACK` tuşuna tıkla                         | <kbd>MOD</kbd>+<kbd>b</kbd> \| <kbd>MOD</kbd>+<kbd>Backspace</kbd> \| _Sağ tıklama²_
 | `APP_SWITCH` tuşuna tıkla                   | <kbd>MOD</kbd>+<kbd>s</kbd> \| _4. tıklama³_
 | `MENU` tuşuna tıkla (ekranı kilitle)⁴       | <kbd>MOD</kbd>+<kbd>m</kbd>
 | `VOLUME_UP` tuşuna tıkla                    | <kbd>MOD</kbd>+<kbd>↑</kbd> _(yukarı)_
 | `VOLUME_DOWN` tuşuna tıkla                  | <kbd>MOD</kbd>+<kbd>↓</kbd> _(aşağı)_
 | `POWER` tuşuna tıkla                        | <kbd>MOD</kbd>+<kbd>p</kbd>
 | Cihazı aç                                    | _Sağ tıklama²_
 | Cihaz ekranını kapat (yansıtma devam eder)   | <kbd>MOD</kbd>+<kbd>o</kbd>
 | Cihaz ekranını aç                           | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>o</kbd>
 | Cihaz ekranını döndür                       | <kbd>MOD</kbd>+<kbd>r</kbd>
 | Bildirim panelini genişlet                  | <kbd>MOD</kbd>+<kbd>n</kbd> \| _5. tıklama³_
 | Ayar panelini genişlet                      | <kbd>MOD</kbd>+<kbd>n</kbd>+<kbd>n</kbd> \| _Çift 5. tıklama³_
 | Panelleri daralt                            | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>n</kbd>
 | Panoya kopyala⁵                             | <kbd>MOD</kbd>+<kbd>c</kbd>
 | Panoya kes⁵                                 | <kbd>MOD</kbd>+<kbd>x</kbd>
 | Panoları senkronize et ve yapıştır⁵         | <kbd>MOD</kbd>+<kbd>v</kbd>
 | Bilgisayar panosundaki metni enjekte et      | <kbd>MOD</kbd>+<kbd>Shift</kbd>+<kbd>v</kbd>
 | Klavye ayarlarını aç (HID klavye için)       | <kbd>MOD</kbd>+<kbd>k</kbd>
 | FPS sayacını etkinleştir/devre dışı bırak (stdout üzerinden) | <kbd>MOD</kbd>+<kbd>i</kbd>
 | Yakınlaştırma/dönme yapmak için parmakla kaydırma | <kbd>Ctrl</kbd>+_tıklayıp hareket ettirme_
 | Dikey eğim yapmak (2 parmakla kaydırma)     | <kbd>Shift</kbd>+_tıklayıp hareket ettirme_
 | Yatay eğim yapmak (2 parmakla kaydırma)     | <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+_tıklayıp hareket ettirme_
 | APK dosyasını sürükleyip bırak              | Bilgisayardan APK yükle
 | APK olmayan dosyayı sürükleyip bırak         | Cihaza dosya gönder

### Cihaza dosya gönderme

Cihaza `/sdcard/Download/` dizinine dosya göndermek için, (APK olmayan) bir dosyayı _scrcpy_ penceresine sürükleyip bırakın.

Görsel bir geri bildirim yoktur, bir günlük konsola yazdırılır.

Hedef dizin, başlatma sırasında değiştirilebilir:

```bash
scrcpy --push-target=/sdcard/Movies/
```

_¹Siyah kenarlıklara çift tıklayarak onları kaldırabilirsiniz._  
_²Sağ tıklama, ekran kapalıysa açar, aksi takdirde BACK tuşuna basar._  
_³4. ve 5. fare tuşları, eğer farenizde varsa._  
_⁴React-native uygulamaları geliştirilirken, `MENU` tuşu geliştirme menüsünü açar._  
_⁵Sadece Android >= 7'de._

Tekrar eden tuşlar ile yapılan kısayollar, tuşu bıraktıktan sonra tekrar basılarak çalıştırılır. Örneğin, "Ayar panelini genişlet" eylemini gerçekleştirmek için:

 1. <kbd>MOD</kbd> tuşuna basın ve basılı tutun.
 2. Ardından <kbd>n</kbd> tuşuna çift basın.
 3. Son olarak, <kbd>MOD</kbd> tuşunu bırakın.

Tüm <kbd>Ctrl</kbd>+_tuş_ kısayolları cihaza iletilir, bu nedenle aktif uygulama tarafından işlenir.
