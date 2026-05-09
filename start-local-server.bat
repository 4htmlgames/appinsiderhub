@echo off
REM Jekyll Local Server Başlatma Script (Windows)
REM Bu script'i çalıştırmak için: start-local-server.bat

echo.
echo ========================================
echo   Jekyll Blog - Local Server Başlatıcı
echo ========================================
echo.

REM Ruby kontrol et
echo [1/4] Ruby kontrol ediliyor...
ruby --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Ruby yüklü değil!
    echo Lütfen Ruby yükle: https://rubyinstaller.org/
    pause
    exit /b 1
)
echo ✅ Ruby bulundu

REM Bundler kontrol et
echo [2/4] Bundler kontrol ediliyor...
bundler --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Bundler yüklü değil!
    echo Yükleniyor...
    gem install bundler
)
echo ✅ Bundler bulundu

REM Dependencies yükle
echo [3/4] Dependencies yükleniyor...
call bundle install
if errorlevel 1 (
    echo ❌ Dependencies yüklenemedi!
    pause
    exit /b 1
)
echo ✅ Dependencies yüklendi

REM Server başlat
echo [4/4] Server başlatılıyor...
echo.
echo ========================================
echo   🚀 Server başlatıldı!
echo ========================================
echo.
echo 🌐 Tarayıcıda aç: http://localhost:4000
echo.
echo 📝 Yazılar:
echo   - http://localhost:4000/earthquake/japan-earthquake-today-tsunami-warning/
echo   - http://localhost:4000/local-alerts/san-diego-earthquake-alerts/
echo   - http://localhost:4000/app-insights/world-monitor-real-time-crisis-tracker/
echo.
echo ⏹️  Durdurmak için: Ctrl + C
echo.
echo ========================================
echo.

call bundle exec jekyll serve

pause
