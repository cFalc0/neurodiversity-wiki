# Neurodiversity Wiki — Schema & Instructions

This file defines the structure, conventions, and templates for every article in this wiki.
Follow it whenever creating or editing a wiki article.

---

## Folder Roles

| Folder | Purpose |
|--------|---------|
| `raw/` | Source material — research papers, YouTube links, article URLs, personal notes. Unprocessed. |
| `wiki/` | Synthesized, Obsidian-ready articles. Each file is a standalone concept page. |
| `schema/` | This file and any future template variants or style guides. |

---

## raw/ Conventions

Each subfolder in `raw/` maps to a topic. Files inside can be:

- `links.md` — list of URLs with one-line descriptions
- `papers.md` — APA citations + short summaries
- `videos.md` — YouTube/podcast titles, URLs, timestamps of key moments
- `notes.md` — freeform notes, quotes, half-formed ideas

No formatting required. Dump and label.

---

## wiki/ Article Template

Every wiki article is a single `.md` file. Use this frontmatter and structure:

```markdown
---
title: "Article Title"
aliases: ["alternate name", "abbreviation"]
tags: [neurodiversity, adhd, masking, social-skills, coping, oversharing, traits]
related: ["[[linked-article]]", "[[another-article]]"]
sources: ["raw/topic/links.md", "raw/topic/papers.md"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
status: draft | review | stable
---

# Article Title

> One-sentence summary of what this article covers.

## Overview

2–4 paragraphs. Plain language. Explain the concept as if to someone who has never
heard of it but is intelligent. Avoid jargon unless defined inline.

## How It Shows Up in Real Life

Concrete, relatable examples. Use bullet points or short vignettes.
Include both neuroaffirming environments and neurotypical/mixed environments.

## Why It Happens (Mechanism)

What's actually going on — neurologically, psychologically, developmentally.
Cite sources using inline links: [Author, Year](source-url).

## Common Misconceptions

Address 2–4 myths directly. Format as **Myth → Reality** pairs.

## Coping & Navigation

Practical strategies, split into two contexts:

### In Neuroaffirming Spaces
- ...

### In Neurotypical or Mixed Spaces
- ...

## Related Concepts

Wikilinks to other articles: [[masking]], [[executive-dysfunction]], [[rejection-sensitive-dysphoria]]

## Sources & Further Reading

- [Title](URL) — one-line description
- raw/topic/papers.md — see entry "Author Year"
```

---

## Tagging Conventions

Use lowercase, hyphen-separated tags. Stick to this controlled vocabulary:

| Tag | Use for |
|-----|---------|
| `neurodiversity` | General umbrella articles |
| `adhd` | ADHD-specific content |
| `autism` | Autism-specific content |
| `masking` | Masking / unmasking |
| `social-skills` | Social navigation, communication |
| `oversharing` | Oversharing behavior and roots |
| `traits` | Common neurodivergent trait profiles |
| `coping` | Strategies and techniques |
| `identity` | Self-understanding, diagnosis, community |
| `neuronormativity` | Systemic and social pressure articles |
| `dyslexia` | Dyslexia-specific content |

---

## Linking Rules (Obsidian)

- Use `[[article-name]]` for internal links — always lowercase, hyphen-separated filename.
- Link on first mention within each article. Don't over-link.
- Every article should have at least 2 outbound links and appear in at least 1 other article.
- Prefer bidirectional links: if A links to B, check whether B should link back to A.

---

## Status Definitions

| Status | Meaning |
|--------|---------|
| `draft` | Raw synthesis, incomplete, not for sharing |
| `review` | Complete enough to read; needs fact-check or expansion |
| `stable` | Reviewed, sourced, ready for use |

---

## Topic Map (Planned Articles)

```
wiki/
├── adhd/
│   ├── what-is-adhd.md
│   ├── executive-dysfunction.md
│   ├── rejection-sensitive-dysphoria.md
│   └── hyperfocus.md
├── masking/
│   ├── masking.md
│   └── unmasking.md
├── social-skills/
│   ├── reading-social-cues.md
│   ├── turn-taking.md
│   └── navigating-neurotypical-spaces.md
├── oversharing/
│   └── why-neurodivergent-people-overshare.md
├── neurodivergent-traits/
│   ├── common-adhd-traits.md
│   ├── sensory-sensitivities.md
│   └── time-blindness.md
├── dyslexia/
│   ├── what-is-dyslexia.md
│   ├── phonological-processing.md
│   └── dyslexia-in-adulthood.md
└── coping-strategies/
    ├── self-advocacy.md
    ├── stimming.md
    └── environmental-modifications.md
```

---

## Workflow

1. **Collect** → dump links/papers/videos into `raw/topic/`
2. **Synthesize** → write or update a `wiki/topic/article.md` using this template
3. **Link** → add wikilinks to related articles
4. **Tag** → apply tags from controlled vocabulary
5. **Status** → mark draft → review → stable as confidence grows
6. **Update index** → add new articles to `wiki/index.md` (this is the published homepage)
7. **Commit** → `git add . && git commit -m "topic: short description"`
8. **Publish** → merge to `main` and push — GH Actions deploys automatically

---

## Publishing

This wiki is published via [Quartz 4](https://quartz.jzhao.xyz/) to GitHub Pages.

| Setting | Value |
|---------|-------|
| Content directory | `wiki/` (non-default; configured via `--directory wiki` flag) |
| Build command | `npx quartz build --directory wiki` |
| Deploy trigger | Push to `main` branch |
| Live URL | `https://cfalc0.github.io/neurodiversity-wiki` |
| Deploy config | `.github/workflows/deploy.yml` |

### Quartz-Specific Notes

- **`wiki/index.md` is the site homepage** — always update it when adding new articles or sections
- **Wikilinks work natively** — `[[article-name]]` and `[[folder/article|Display Text]]` both resolve correctly
- **`status: draft` articles are hidden** — the `RemoveDrafts` plugin excludes them from the build; use this intentionally for in-progress work
- **`aliases` generate redirects** — Quartz creates redirect pages automatically from frontmatter aliases
- **`tags` are browsable** — all tags appear at `/tags/` on the live site; use the controlled vocabulary
- **Folder pages are auto-generated** — each subfolder in `wiki/` gets a browsable index page listing its articles
