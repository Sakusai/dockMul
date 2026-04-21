# BaguetteCorp — Site statique Docker

## Lancer en local

```bash
docker compose up -d
# Ouvrir http://localhost
```

## Héberger gratuitement

### Option 1 — GitHub Pages (recommandé, 0 Docker nécessaire)
1. Créer un repo GitHub public
2. Y déposer `index.html` à la racine
3. Dans Settings → Pages → Source : `main branch / root`
4. Ton site est dispo sur `https://TON_PSEUDO.github.io/NOM_REPO`

### Option 2 — Render.com (avec Docker, gratuit)
1. Push ce dossier sur GitHub
2. Aller sur https://render.com → New → Web Service
3. Connecter le repo, choisir "Docker" comme environment
4. Free plan → Deploy
5. URL fournie automatiquement (ex: `baguettecorp.onrender.com`)

### Option 3 — Railway.app (avec Docker, 5$/mois crédits offerts)
1. Push sur GitHub
2. railway.app → New Project → Deploy from GitHub
3. Sélectionner le repo → Railway détecte docker-compose

## Pour ton projet PrestaShop
Le `docker-compose.yml` de PrestaShop que tu as déjà tourne en local.
Pour l'héberger, Render ou Railway supportent Docker Compose.
Attention : PrestaShop nécessite de la RAM (512 MB+), le free tier de Render peut être juste.
