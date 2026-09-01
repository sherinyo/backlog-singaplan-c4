---
schema_version: "1.0"

local_id: "ROLE-USXX-XX"
type: "Task"
title: "[Task Title]"
parent_local_id: "US-XX"

role: "[PM|Designer|Developer|Tester|Tech Lead|Release]"
category: "[Product|Design|Development|Testing|Release]"

status: "Draft"
priority: null
estimate: null
assignees: []
start_date: null
target_date: null

labels:
  - "task"

dependencies:
  blocked_by: []
  blocking: []

related_acceptance_criteria: []

sync:
  mode: "draft"
  approved_by: []
  approved_at: null
  github_issue_number: null
  github_issue_url: null
  last_synced_at: null
---

# [TASK-ID] [Task Title]

## Context

[Mengapa task ini diperlukan dan masalah apa yang didukungnya.]

## Expected Output

- [Deliverable atau hasil yang dapat diperiksa.]

## Related Acceptance Criteria

- `[AC-ID] — [Scenario Name]`

## Task Acceptance Criteria

- [ ] [Output atau behavior yang dapat diverifikasi.]
- [ ] [Output atau behavior yang dapat diverifikasi.]

## Dependencies

### Blocked By

- [Task/dependency atau `None`.]

### Blocking

- [Task yang bergantung pada hasil ini.]