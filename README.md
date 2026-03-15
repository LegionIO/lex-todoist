# lex-todoist

Todoist task management integration for [LegionIO](https://github.com/LegionIO/LegionIO). Manage projects, tasks, sections, labels, and comments via the Todoist REST API v2 from within task chains or as a standalone client library.

## Installation

```bash
gem install lex-todoist
```

Or add to your Gemfile:

```ruby
gem 'lex-todoist'
```

## Standalone Usage

```ruby
require 'legion/extensions/todoist'

client = Legion::Extensions::Todoist::Client.new(token: 'your-api-token')

# Projects
client.list
client.create(name: 'My Project')
client.get(project_id: '123')

# Tasks
client.list_active(project_id: '123')
client.create(content: 'Buy milk', project_id: '123')
client.close(task_id: '456')

# Comments
client.list(task_id: '456')
client.create(task_id: '456', content: 'Done!')
```

## Runners

### Projects

| Method | Parameters | Description |
|--------|-----------|-------------|
| `list` | (none) | List all projects |
| `create` | `name:` | Create a project |
| `get` | `project_id:` | Get a project |
| `update` | `project_id:`, `name:` | Update a project |
| `delete` | `project_id:` | Delete a project |
| `collaborators` | `project_id:` | List project collaborators |

### Tasks

| Method | Parameters | Description |
|--------|-----------|-------------|
| `create` | `content:`, `project_id:` | Create a task |
| `get_active` | `task_id:` | Get an active task |
| `list_active` | `project_id:` (optional) | List active tasks |
| `update` | `task_id:` | Update a task |
| `close` | `task_id:` | Mark a task complete |
| `reopen` | `task_id:` | Reopen a completed task |
| `delete` | `task_id:` | Delete a task |

### Sections

| Method | Parameters | Description |
|--------|-----------|-------------|
| `list` | `project_id:` (optional) | List sections |
| `get_project_section` | `project_id:` | List sections for a project |
| `create` | `project_id:`, `name:` | Create a section |
| `get` | `section_id:` | Get a section |
| `update` | `section_id:`, `name:` | Update a section |
| `delete` | `section_id:` | Delete a section |

### Labels

| Method | Parameters | Description |
|--------|-----------|-------------|
| `list` | (none) | List all labels |
| `get` | `label_id:` | Get a label |
| `create` | `name:` | Create a label |
| `update` | `label_id:`, `name:` | Update a label |
| `delete` | `label_id:` | Delete a label |

### Comments

| Method | Parameters | Description |
|--------|-----------|-------------|
| `list` | `task_id:` or `project_id:` | List comments |
| `get` | `comment_id:` | Get a comment |
| `create` | `task_id:`, `content:` | Create a comment |
| `delete` | `comment_id:` | Delete a comment |

## Requirements

- Ruby >= 3.4
- Todoist API token (Bearer token auth)
- `faraday` >= 2.0

## License

MIT
