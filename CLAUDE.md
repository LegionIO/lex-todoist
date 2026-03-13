# lex-todoist: Todoist Integration for LegionIO

**Repository Level 3 Documentation**
- **Category**: `/Users/miverso2/rubymine/legion/extensions/CLAUDE.md`

## Purpose

Legion Extension that connects LegionIO to the Todoist task management service. Provides runners for managing projects, tasks, sections, labels, and comments via the Todoist API.

**License**: MIT

## Architecture

```
Legion::Extensions::Todoist
├── Runners/
│   ├── Projects           # Project CRUD
│   ├── Tasks              # Task CRUD
│   ├── Sections           # Section management
│   ├── Labels             # Label management
│   └── Comments           # Comment management
└── Helpers/
    └── Client             # Todoist API client
```

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/todoist.rb` | Entry point, extension registration |
| `lib/legion/extensions/todoist/runners/` | All Todoist resource runners |
| `lib/legion/extensions/todoist/helpers/client.rb` | API client helper |

## Testing

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
