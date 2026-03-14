# lex-todoist: Todoist Integration for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-other/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that connects LegionIO to the Todoist task management service. Provides runner modules for managing projects, tasks, sections, labels, and comments via the Todoist REST API.

**GitHub**: https://github.com/LegionIO/lex-todoist
**License**: MIT

## Status

Partial. Runner modules exist with method signatures, but all method bodies are empty stubs. The `Helpers::Client` module is an empty stub. No runtime gem dependency is declared in the gemspec — HTTP client wiring is pending.

## Architecture

```
Legion::Extensions::Todoist
├── Runners/
│   ├── Projects           # list, create, get, update, delete, collaborators (empty bodies)
│   ├── Tasks              # create, get_active, list_active, update, close, reopen, delete (empty bodies)
│   ├── Sections           # list, get_project_section, create, get, update, delete (empty bodies)
│   ├── Labels             # (empty bodies)
│   └── Comments           # (empty bodies)
└── Helpers/
    └── Client             # empty stub module
```

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/todoist.rb` | Entry point, extension registration |
| `lib/legion/extensions/todoist/runners/` | All Todoist resource runners (method bodies empty) |
| `lib/legion/extensions/todoist/helpers/client.rb` | Client helper (empty stub module) |

## Dependencies

None declared (partial). Dev dependencies: `bundler`, `rake`, `rspec`, `rubocop`.

## Development

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
