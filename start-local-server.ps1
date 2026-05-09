# Jekyll Local Server Başlatma Script (PowerShell)
# Kullanım: .\start-local-server.ps1

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Jekyll Blog - Local Server Başlatıcı" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Ruby kontrol et
Write-Host "[1/4] Ruby kontrol ediliyor..." -ForegroundColor Yellow
try {
    $rubyVersion = ruby --version
    Write-Host "✅ Ruby bulundu: $rubyVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Ruby yüklü değil!" -ForegroundColor Red
    Write-Host "Lütfen Ruby yükle: https://rubyinstaller.org/" -ForegroundColor Red
    Read-Host "Devam etmek için Enter'a basın"
    exit 1
}

# Bundler kontrol et
Write-Host "[2/4] Bundler kontrol ediliyor..." -ForegroundColor Yellow
try {
    $bundlerVersion = bundler --version
    Write-Host "✅ Bundler bulundu: $bundlerVersion" -ForegroundColor Green
} catch {
    Write-Host "⚠️  Bundler yüklü değil, yükleniyor..." -ForegroundColor Yellow
    gem install bundler
}

# Dependencies yükle
Write-Host "[3/4] Dependencies yükleniyor..." -ForegroundColor Yellow
bundle install
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Dependencies yüklenemedi!" -ForegroundColor Red
    Read-Host "Devam etmek için Enter'a basın"
    exit 1
}
Write-Host "✅ Dependencies yüklendi" -ForegroundColor Green

# Server başlat
Write-Host "[4/4] Server başlatılıyor..." -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  🚀 Server başlatıldı!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 Tarayıcıda aç: http://localhost:4000" -ForegroundColor Cyan
Write-Host ""
Write-Host "📝 Yazılar:" -ForegroundColor Cyan
Write-Host "   - http://localhost:4000/earthquake/japan-earthquake-today-tsunami-warning/" -ForegroundColor White
Write-Host "   - http://localhost:4000/local-alerts/san-diego-earthquake-alerts/" -ForegroundColor White
Write-Host "   - http://localhost:4000/app-insights/world-monitor-real-time-crisis-tracker/" -ForegroundColor White
Write-Host ""
Write-Host "⏹️  Durdurmak için: Ctrl + C" -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

bundle exec jekyll serve

Read-Host "Devam etmek için Enter'a basın"
