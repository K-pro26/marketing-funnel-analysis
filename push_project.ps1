# Script PowerShell pour pousser le projet Marketing Funnel Analysis sur GitHub

# 1️⃣ Définir le chemin du projet local
$projectPath = "C:\marketing-funnel-project\marketing-funnel-analysis"

# 2️⃣ Se placer dans le dossier du projet
Set-Location $projectPath

# 3️⃣ Initialiser le dépôt Git si ce n'est pas déjà fait
if (-not (Test-Path ".git")) {
    git init
    Write-Host "Dépôt Git initialisé."
}

# 4️⃣ Ajouter tous les fichiers
git add .
Write-Host "Tous les fichiers ajoutés au staging."

# 5️⃣ Créer un commit
$commitMessage = "Premier commit : projet complet Marketing Funnel Analysis avec datasets, SQL et dashboard"
git commit -m $commitMessage
Write-Host "Commit créé avec succès."

# 6️⃣ Ajouter le remote GitHub
# Remplace <ton_utilisateur> par ton nom GitHub et <repo> par le nom du repo
$githubUser = "<K-pro26>"
$githubRepo = "marketing-funnel-analysis"
$remoteUrl = "https://github.com/$githubUser/$githubRepo.git"

# Vérifier si le remote existe déjà
$remotes = git remote
if ($remotes -notcontains "origin") {
    git remote add origin $remoteUrl
    Write-Host "Remote GitHub ajouté : $remoteUrl"
}

# 7️⃣ Pousser sur la branche main
git branch -M main
git push -u origin main
Write-Host "Projet poussé sur GitHub avec succès !"