# lex-todoist

Todoist task management integration for [LegionIO](https://github.com/LegionIO/LegionIO). Manage projects, tasks, sections, labels, and comments via the Todoist REST API.

## Installation

```bash
gem install lex-todoist
```

Or add to your Gemfile:

```ruby
gem 'lex-todoist'
```

## Status

This extension is partial. Runner modules and method signatures are defined but method bodies are empty stubs. HTTP client wiring is pending. No runtime gem dependency is declared yet.

## Runners

| Runner | Defined Methods |
|--------|----------------|
| Projects | `list`, `create`, `get`, `update`, `delete`, `collaborators` |
| Tasks | `create`, `get_active`, `list_active`, `update`, `close`, `reopen`, `delete` |
| Sections | `list`, `get_project_section`, `create`, `get`, `update`, `delete` |
| Labels | (pending) |
| Comments | (pending) |

## Requirements

- Ruby >= 3.4
- [LegionIO](https://github.com/LegionIO/LegionIO) framework
- Todoist API token

## License

MIT
