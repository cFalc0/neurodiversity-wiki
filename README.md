# Neurodiversity Wiki

A personal knowledge base built using the Karpathy wiki technique — raw sources in,
synthesized Obsidian articles out.

---

## Folder Structure

```
Neurodiversity Wiki/
│
├── raw/                         # Unprocessed source material
│   ├── adhd/                    # Links, papers, videos, notes on ADHD
│   ├── masking/                 # Masking & unmasking sources
│   ├── social-skills/           # Social navigation material
│   ├── oversharing/             # Why neurodivergent people overshare
│   ├── neurodivergent-traits/   # Common traits across conditions
│   └── coping-strategies/       # Techniques & strategies
│
├── wiki/                        # Synthesized Obsidian-ready articles
│   ├── adhd/
│   ├── masking/
│   ├── social-skills/
│   ├── oversharing/
│   ├── neurodivergent-traits/
│   └── coping-strategies/
│
└── schema/
    └── SCHEMA.md                # Article template, tagging rules, workflow
```

---

## How to Use This

1. **Add sources** → drop links, papers, and notes into the relevant `raw/topic/` folder.
2. **Build articles** → use `schema/SCHEMA.md` as the template for every `wiki/` article.
3. **Open in Obsidian** → point Obsidian at this folder; wikilinks will connect automatically.
4. **Commit often** → `git commit` after adding sources or completing an article.

---

## Topics Covered

| Topic | raw/ | wiki/ |
|-------|------|-------|
| ADHD (overview, traits, mechanisms) | `raw/adhd/` | `wiki/adhd/` |
| Masking & Unmasking | `raw/masking/` | `wiki/masking/` |
| Social Skills & Navigation | `raw/social-skills/` | `wiki/social-skills/` |
| Why Neurodivergent People Overshare | `raw/oversharing/` | `wiki/oversharing/` |
| Common Neurodivergent Traits | `raw/neurodivergent-traits/` | `wiki/neurodivergent-traits/` |
| Coping Strategies (neuroaffirming + mixed) | `raw/coping-strategies/` | `wiki/coping-strategies/` |

---

## Schema at a Glance

Full spec lives in `schema/SCHEMA.md`. Short version:

- Every wiki article has YAML frontmatter: `title`, `aliases`, `tags`, `related`, `status`
- Sections: Overview → How It Shows Up → Mechanism → Misconceptions → Coping → Sources
- Tags are controlled vocabulary (see schema)
- Links use Obsidian `[[wikilink]]` syntax
- Status: `draft` → `review` → `stable`

---

## Git Workflow

```bash
# After adding raw sources
git add raw/topic/
git commit -m "raw/topic: added links and papers"

# After writing or updating an article
git add wiki/topic/article.md
git commit -m "wiki/topic: draft article-name"
```
