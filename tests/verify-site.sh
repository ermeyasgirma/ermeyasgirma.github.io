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
! grep -Fq 'https://github.com/ermeyasgirma/Encrypted-Chat-Server' index.html
! grep -Fq 'https://github.com/ermeyasgirma/search_command' index.html
grep -Fq '<a href="https://github.com/ermeyasgirma">GitHub</a>' index.html
grep -Fq '<a href="mailto:ermeyasgirma72@gmail.com">Email</a>' index.html
grep -Fq '<a href="ermeyas_resume.pdf" target="_blank" rel="noopener">Resume</a>' index.html
test -f ermeyas_resume.pdf
! grep -Fq 'Hello, I' index.html
! grep -Fq '<h1>Ermeyas Girma</h1>' index.html
! grep -Fq 'Senior Software Engineer</p>' index.html
grep -Fq 'src="PXL_20250814_071235023.MP.jpeg"' index.html
grep -Fq 'alt="Ermeyas Girma"' index.html
test -f PXL_20250814_071235023.MP.jpeg
grep -Fq 'linear-gradient' styles.css
grep -Fq 'object-fit: cover' styles.css
grep -Fq "Hi, I'm Ermeyas Girma, currently working at Roku as a Senior Software Engineer." index.html
grep -Fq 'I previously worked at Rapita Systems as a software engineer intern, developing a Perl-based compiler to provide software verification for embedded aerospace systems. Before this, I studied Computer Science at the University of Cambridge, Corpus Christi College.' index.html
grep -Fq 'I enjoy hiking, lifting weights, playing chess, travelling, reading fantasy books and working on fun coding projects.' index.html
! grep -Fq 'driven by curiosity about how technology works' index.html
python3 - <<'PY'
from pathlib import Path

page = Path("index.html").read_text(encoding="utf-8")
links = [
    '<a href="mailto:ermeyasgirma72@gmail.com">Email</a>',
    '<a href="ermeyas_resume.pdf" target="_blank" rel="noopener">Resume</a>',
    '<a href="https://github.com/ermeyasgirma">GitHub</a>',
    '<a href="https://www.linkedin.com/in/ermeyas-girma-4b7386199/">LinkedIn</a>',
]
positions = [page.index(link) for link in links]
assert positions == sorted(positions)
PY
! grep -Fq 'margin-left: max(2rem, calc((100% - 58rem) / 2));' styles.css
grep -Fq 'margin-right: auto;' styles.css
grep -Fq 'margin-left: max(2rem, calc((100% - 72rem) / 2));' styles.css
grep -Fq 'align-items: start;' styles.css
grep -Fq '.hero-copy {' styles.css
grep -Fq '@media (max-width: 30rem)' styles.css
python3 - <<'PY'
from pathlib import Path

desktop_css = Path("styles.css").read_text(encoding="utf-8").split("@media", 1)[0]
assert ".hero-copy {\n  padding-top: 0;\n}" in desktop_css
PY
