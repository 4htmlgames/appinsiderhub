# 🔧 Bundle Kurulum Rehberi

## ❌ Sorun
```
bundle : The term 'bundle' is not recognized...
```

## ✅ Çözüm

### Adım 1: Ruby Kontrol Et
```powershell
ruby --version
```

**Eğer Ruby yüklü değilse:**
- https://rubyinstaller.org/ adresine git
- "Ruby+Devkit" versiyonunu indir (örn: Ruby 3.2.0)
- Kur ve "Add Ruby executables to your PATH" seçeneğini işaretle

---

### Adım 2: Bundler Yükle

```powershell
gem install bundler
```

**Çıktı örneği:**
```
Successfully installed bundler-2.4.10
1 gem installed
```

---

### Adım 3: Bundler Kontrol Et

```powershell
bundler --version
```

**Eğer hala çalışmazsa PowerShell'i yeniden başlat:**
```powershell
# PowerShell'i kapat ve yeniden aç
```

---

### Adım 4: Dependencies Yükle

```powershell
cd C:\Users\User\Desktop\appinsiderhub
bundle install
```

**Çıktı örneği:**
```
Fetching gem metadata from https://rubygems.org/
Resolving dependencies...
Installing jekyll 4.3.0
Installing minima 2.5.1
...
Bundle complete!
```

---

### Adım 5: Server Başlat

```powershell
bundle exec jekyll serve
```

**Başarılı çıktı:**
```
Configuration file: C:/Users/User/Desktop/appinsiderhub/_config.yml
            Source: C:/Users/User/Desktop/appinsiderhub
       Destination: C:/Users/User/Desktop/appinsiderhub/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
                    done in 2.345 seconds.
 Auto-regeneration: enabled for 'C:/Users/User/Desktop/appinsiderhub'
    Server address: http://127.0.0.1:4000/
  Server running...
  Press ctrl-c to stop the server.
```

---

## 🌐 Tarayıcıda Aç

```
http://localhost:4000
```

---

## 📝 Yazıları Kontrol Et

```
http://localhost:4000/earthquake/japan-earthquake-today-tsunami-warning/
http://localhost:4000/local-alerts/san-diego-earthquake-alerts/
http://localhost:4000/app-insights/world-monitor-real-time-crisis-tracker/
```

---

## 🛑 Server Durdur

```
Ctrl + C
```

---

## 🐛 Sorun Giderme

### Problem: "gem: command not found"
**Çözüm:** Ruby yüklü değil
```powershell
# Ruby yükle: https://rubyinstaller.org/
```

### Problem: "bundle: command not found"
**Çözüm:** Bundler yüklü değil
```powershell
gem install bundler
```

### Problem: "Permission denied"
**Çözüm:** PowerShell'i Administrator olarak aç
```powershell
# PowerShell'i sağ tıkla → "Run as administrator"
```

### Problem: Port 4000 zaten kullanılıyor
**Çözüm:** Farklı port kullan
```powershell
bundle exec jekyll serve --port 3000
```

---

## ✨ Hızlı Komutlar

```powershell
# Ruby yükle
gem install bundler

# Dependencies yükle
bundle install

# Server başlat
bundle exec jekyll serve

# Server durdur
Ctrl + C

# Farklı port'ta başlat
bundle exec jekyll serve --port 3000

# Incremental build (hızlı)
bundle exec jekyll serve --incremental

# Tüm dosyaları yeniden oluştur
bundle exec jekyll clean
bundle exec jekyll serve
```

---

## 📊 Kontrol Listesi

- [ ] Ruby yüklü (`ruby --version`)
- [ ] Bundler yüklü (`bundler --version`)
- [ ] Dependencies yüklü (`bundle install`)
- [ ] Server başlatıldı (`bundle exec jekyll serve`)
- [ ] http://localhost:4000 açılıyor
- [ ] Yazılar görünüyor
- [ ] Sitemap.xml erişilebiliyor

---

## 🎉 Tamamlandı!

Artık local'de çalışan Jekyll blog'un var! 🚀
