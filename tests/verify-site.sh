#!/usr/bin/env bash
set -euo pipefail

grep -Fq '<title>Ermeyas Girma | Senior Software Engineer</title>' index.html
grep -Fq 'https://github.com/ermeyasgirma' index.html
grep -Fq 'https://www.linkedin.com/in/ermeyas-girma-4b7386199/' index.html
grep -Fq 'application/ld+json' index.html
grep -Fq 'rel="canonical" href="https://ermeyasgirma.github.io/"' index.html
grep -Fq 'name="viewport"' index.html
grep -Fq 'href="styles.css"' index.html
grep -Fq ':focus-visible' styles.css
grep -Fq 'User-agent: *' robots.txt
grep -Fq 'Allow: /' robots.txt
grep -Fq 'Sitemap: https://ermeyasgirma.github.io/sitemap.xml' robots.txt
grep -Fq '<loc>https://ermeyasgirma.github.io/</loc>' sitemap.xml
grep -Fq 'actions/deploy-pages@v4' .github/workflows/deploy-pages.yml
grep -Fq 'pages: write' .github/workflows/deploy-pages.yml
grep -Fxq 'google-site-verification: googlee63064bd8112f91c.html' googlee63064bd8112f91c.html
grep -Fq 'https://github.com/ermeyasgirma/jraft' index.html
grep -Fq 'https://github.com/ermeyasgirma/chess-analysis-dashboard' index.html
grep -Fq 'https://github.com/ermeyasgirma/Deliberative-Social-Media' index.html
grep -Fq 'https://github.com/ermeyasgirma/JGAL' index.html
grep -Fq 'https://github.com/ermeyasgirma/Encrypted-Chat-Server' index.html
grep -Fq 'https://github.com/ermeyasgirma/search_command' index.html
