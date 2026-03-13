# lex-todoist: Todoist Integration for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-other/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that connects LegionIO to the Todoist task management service. Provides runners for managing projects, tasks, sections, labels, and comments via the Todoist REST API.

**GitHub**: https://github.com/LegionIO/lex-todoist
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
    └── Client             # Todoist API client (stub - empty module)
```

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/todoist.rb` | Entry point, extension registration |
| `lib/legion/extensions/todoist/runners/` | All Todoist resource runners |
| `lib/legion/extensions/todoist/helpers/client.rb` | Client helper (currently empty stub) |

## Development Notes

The `helpers/client.rb` is an empty module stub. The runners likely implement their own HTTP calls or this needs to be wired up.

No runtime gem dependencies declared in the gemspec - runner implementation should be reviewed.

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
