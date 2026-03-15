# lex-todoist: Todoist Integration for LegionIO

**Repository Level 3 Documentation**
- **Parent**: `/Users/miverso2/rubymine/legion/extensions-other/CLAUDE.md`
- **Grandparent**: `/Users/miverso2/rubymine/legion/CLAUDE.md`

## Purpose

Legion Extension that connects LegionIO to the Todoist task management service. Provides runner modules for managing projects, tasks, sections, labels, and comments via the Todoist REST API.

**Version**: 0.2.0
**GitHub**: https://github.com/LegionIO/lex-todoist
**License**: MIT

## Status

Implemented (v0.2.0). All five runner modules are fully implemented via `Helpers::Client` (Faraday to Todoist REST API v2). Standalone `Client` class included. `faraday >= 2.0` declared as a gemspec runtime dependency.

## Architecture

```
Legion::Extensions::Todoist
├── Runners/
│   ├── Projects           # list, create, get, update, delete, collaborators (6 methods)
│   ├── Tasks              # create, get_active, list_active, update, close, reopen, delete (7 methods)
│   ├── Sections           # list, get_project_section, create, get, update, delete (5 methods)
│   ├── Labels             # list, get, create, update, delete (5 methods)
│   └── Comments           # list, get, create, delete (4 methods)
├── Helpers/
│   └── Client             # Faraday connection to Todoist REST API v2 (Bearer token auth)
└── Client                 # Standalone client class (includes all runners)
```

## Key Files

| Path | Purpose |
|------|---------|
| `lib/legion/extensions/todoist.rb` | Entry point, extension registration |
| `lib/legion/extensions/todoist/runners/` | All Todoist resource runners (fully implemented) |
| `lib/legion/extensions/todoist/helpers/client.rb` | Faraday client to `https://api.todoist.com/rest/v2` with Bearer token auth |
| `lib/legion/extensions/todoist/client.rb` | Standalone `Client` class for use outside Legion framework |

## Dependencies

| Gem | Purpose |
|-----|---------|
| `faraday` (>= 2.0) | HTTP client for Todoist REST API v2 |

## Development

9 specs total.

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

---

**Maintained By**: Matthew Iverson (@Esity)
