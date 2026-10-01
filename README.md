# SLFASTUDIO — Final Local Build

Bu paket Windows üzerinde yerel geliştirme için hazırlanmıştır.

## En kolay kurulum
1. Node.js LTS kurun.
2. Bu klasörde `KURULUM.bat` dosyasına çift tıklayın.
3. Kurulum bitince site `http://localhost:5173` adresinde açılır.
4. Server `http://localhost:4000` üzerinde çalışır.

## Manuel
```bash
npm run install:all
npm run dev
```

## Admin
`Ctrl + Shift + Alt + L` ile admin panelini açın. Varsayılan yerel admin anahtarı `SLFAADMIN`dir. İnternete açmadan önce `.env` içinde `ADMIN_KEY` değerini değiştirin.

## Gerçek video pipeline
Video işlemleri server tarafında paketlenen `ffmpeg-static` motoruyla yapılır. Seçilen profil gerçek çözünürlük, FPS, bitrate ve H.264/AAC çıktısına uygulanır. Başarısız işlemde kredi iade edilir.

## Kredi
Her yeni hesap 0 krediyle başlar. Admin panelinden verilen kredi JSON veri dosyasına kaydedilir ve kullanıcı ekranı sunucudan 1 saniyelik aralıklarla yenilenir.

## IP
Giriş/kayıt IP'si server tarafından kaydedilir. `localhost` testinde tarayıcı aynı bilgisayarda olduğu için `::1` veya `127.0.0.1` görülebilir. Gerçek kullanıcı IP'si için production reverse-proxy/HTTPS yapılandırması gerekir.

## Güvenlik
Kullanıcı şifreleri düz metin olarak görüntülenmez; SHA-256 ile hashlenir. Production için Argon2id/bcrypt, kalıcı veritabanı, HTTPS, güvenli cookie tabanlı oturum ve rate limiting eklenmesi önerilir.

## Araçlar
- Vocal Remover
- Fotoğraf Background Remover
