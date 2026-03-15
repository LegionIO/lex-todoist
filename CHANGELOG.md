# Changelog

## [0.2.0] - 2026-03-15

### Added
- Implemented `Helpers::Client#connection` using Faraday with Bearer token auth against Todoist REST API v2
- Implemented `Runners::Projects`: list_projects, get_project, create_project, update_project, delete_project, collaborators
- Implemented `Runners::Tasks`: create_task, get_task, list_tasks, update_task, close_task, reopen_task, delete_task
- Implemented `Runners::Sections`: list_sections, get_section, create_section, update_section, delete_section
- Implemented `Runners::Labels`: list_labels, get_label, create_label, update_label, delete_label
- Implemented `Runners::Comments`: get_comments, create_comment, update_comment, delete_comment
- Added standalone `Client` class that includes all runner modules for use outside the Legion runtime
- Added `faraday >= 2.0` runtime dependency to gemspec
- Added client spec covering project, task, label, and comment operations

## [0.1.0] - 2026-03-13

### Added
- Initial release
