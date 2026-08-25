#!/usr/bin/env bash
set -euo pipefail

grep -Fq '<title>Ermeyas Girma</title>' index.html
grep -Fq '<meta property="og:title" content="Ermeyas Girma">' index.html
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
test -f projects.html
test -f art.html
for page in index.html projects.html art.html; do
  grep -Fq 'aria-label="Primary navigation"' "$page"
  grep -Fq 'href="index.html">Home</a>' "$page"
  grep -Fq 'href="projects.html">Projects</a>' "$page"
  grep -Fq 'href="art.html">Art</a>' "$page"
  grep -Fq '© Ermeyas Girma. All rights reserved.' "$page"
done
grep -Fq 'href="index.html" aria-current="page">Home</a>' index.html
grep -Fq 'href="projects.html" aria-current="page">Projects</a>' projects.html
grep -Fq 'href="art.html" aria-current="page">Art</a>' art.html
grep -Fq 'Java implementation of the Raft consensus algorithm.' projects.html
grep -Fq 'Chess.com game-analysis dashboard.' projects.html
grep -Fq 'Cambridge second-year group project for a deliberative social-media platform.' projects.html
grep -Fq 'Java genetic-algorithm library.' projects.html
grep -Fq 'Travel photographs coming soon.' art.html
! grep -Fq '<img' art.html
grep -Fq 'https://ermeyasgirma.github.io/projects.html' sitemap.xml
grep -Fq 'https://ermeyasgirma.github.io/art.html' sitemap.xml
grep -Fq '.site-nav {' styles.css
grep -Fq '.site-footer {' styles.css
grep -Fq 'flex-direction: column;' styles.css
grep -Fq 'flex: 1;' styles.css
grep -Fq 'width: 100%;' styles.css
grep -Fq 'background: rgb(13 148 136 / 0.55);' styles.css
grep -Fq 'font-size: 1.125rem;' styles.css
grep -Fq 'gap: 0.5rem 2rem;' styles.css
grep -Fq 'padding: 1rem 1.5rem;' styles.css
grep -Fq 'text-align: center;' styles.css
grep -Fq '<h1 class="projects-heading">Projects</h1>' projects.html
grep -Fq '<div class="project-list">' projects.html
test "$(grep -Fc '<article class="project-entry">' projects.html)" -eq 4
test "$(grep -Fc '<div class="project-media">Project image coming soon</div>' projects.html)" -eq 4
test "$(grep -Fc '>View on GitHub</a>' projects.html)" -eq 4
! grep -Fq 'class="project-grid"' projects.html
grep -Fq '.projects-heading {' styles.css
grep -Fq 'font-size: clamp(1.75rem, 5vw, 2.5rem);' styles.css
grep -Fq '.project-list {' styles.css
grep -Fq '.project-entry + .project-entry {' styles.css
grep -Fq 'aspect-ratio: 16 / 9;' styles.css
grep -Fq 'border: 2px dashed rgb(255 255 255 / 0.5);' styles.css
grep -Fq 'place-items: center;' styles.css
grep -Fq 'background: rgb(15 23 42 / 0.25);' styles.css
grep -Fq '.project-media img {' styles.css
! grep -Fq '<img' projects.html
