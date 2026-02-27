#!/usr/bin/env powershell
# School Admin Portal - GitHub Deployment Script
# GitHub Username: khushi_public_school

Write-Host "╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║  School Admin Portal - GitHub Deployment                  ║" -ForegroundColor Cyan
Write-Host "║  GitHub: khushi_public_school                             ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan

Write-Host "`n📁 Repo: school-admin-portal" -ForegroundColor Green
Write-Host "👤 User: khushi_public_school" -ForegroundColor Green
Write-Host "🔗 URL:  https://github.com/khushi_public_school/school-admin-portal" -ForegroundColor Green

Write-Host "`n🔧 STEP 1: Configure Git (One-time only)" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray

$name = Read-Host "Enter your full name (e.g., Khushi School Admin)"
$email = Read-Host "Enter your email (e.g., admin@khushistool.com)"

Write-Host "Configuring git..." -ForegroundColor Gray
git config user.name "$name"
git config user.email "$email"
Write-Host "✅ Git configured" -ForegroundColor Green

Write-Host "`n📦 STEP 2: Prepare Files for Upload" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray

Write-Host "Adding all files to git..." -ForegroundColor Gray
git add .
Write-Host "✅ Files staged" -ForegroundColor Green

Write-Host "Creating initial commit..." -ForegroundColor Gray
git commit -m "Initial commit: School Admin Portal with Students, Teachers, Attendance & Payments database"
Write-Host "✅ Commit created" -ForegroundColor Green

Write-Host "`n🔗 STEP 3: Connect to GitHub Repository" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray

$repo_url = "https://github.com/khushi_public_school/school-admin-portal.git"
Write-Host "Repository URL: $repo_url" -ForegroundColor Cyan

Write-Host "Setting remote origin..." -ForegroundColor Gray
git branch -M main
git remote add origin $repo_url
Write-Host "✅ Remote configured" -ForegroundColor Green

Write-Host "`n📤 STEP 4: Push to GitHub" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray

Write-Host "Pushing to GitHub (this may take 1-2 minutes)..." -ForegroundColor Gray
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
} else {
    Write-Host "❌ Push failed. Check if repository exists on GitHub." -ForegroundColor Red
    Write-Host "💡 Create repository first: https://github.com/new" -ForegroundColor Yellow
    exit 1
}

Write-Host "`n✨ STEP 5: Verify GitHub Upload" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray
Write-Host "🔍 View your repository:" -ForegroundColor Cyan
Write-Host "   https://github.com/khushi_public_school/school-admin-portal" -ForegroundColor Cyan

Write-Host "`n🚀 STEP 6: Deploy to Railway" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray
Write-Host "1. Go to: https://railway.app" -ForegroundColor White
Write-Host "2. Click: 'Start with GitHub'" -ForegroundColor White
Write-Host "3. Authorize Railway to access GitHub" -ForegroundColor White
Write-Host "4. Select: 'school-admin-portal' repository" -ForegroundColor White
Write-Host "5. Click: 'Deploy'" -ForegroundColor White
Write-Host "6. Wait 5 minutes for deployment" -ForegroundColor White
Write-Host "7. Get your live URL from Railway dashboard" -ForegroundColor White

Write-Host "`n📝 STEP 7: Update API URL in Frontend" -ForegroundColor Yellow
Write-Host "────────────────────────────────────────────────" -ForegroundColor Gray
Write-Host "Edit 'script.js' and change:" -ForegroundColor White
Write-Host "  const API_URL = 'https://your-railway-url';" -ForegroundColor Cyan

Write-Host "`n╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║  ✅ GitHub Deployment Complete!                            ║" -ForegroundColor Green
Write-Host "║                                                            ║" -ForegroundColor Green
Write-Host "║  GitHub:    khushi_public_school/school-admin-portal       ║" -ForegroundColor Green
Write-Host "║  Next Step: Deploy on Railway (5 minutes)                 ║" -ForegroundColor Green
Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Green

Write-Host "`n🔗 Useful Links:" -ForegroundColor Cyan
Write-Host "   Repository:         https://github.com/khushi_public_school/school-admin-portal" -ForegroundColor Gray
Write-Host "   Railway Dashboard:   https://railway.app" -ForegroundColor Gray
Write-Host "   Documentation:       See DEPLOYMENT_READY.md" -ForegroundColor Gray
