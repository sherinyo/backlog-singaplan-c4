# Project Planning Backlog Template

Template ini digunakan untuk mengubah perencanaan produk menjadi struktur:

```text
Epic → User Story → Task/Sub-Issue → GitHub Project
```

## Struktur

```text
project-planning/
├── README.md
├── planning/
├── backlog/
│   ├── epics/
│   ├── user-stories/
│   └── tasks/
├── templates/
│   ├── epic-template.md
│   ├── user-story-template.md
│   └── task-template.md
└── automation/
    ├── config.yaml
    ├── validate-backlog.sh
    ├── sync-backlog.sh
    └── sync-map.json
```

## Naming Convention

- Epic: `EP-01-description.md`
- User Story: `US-01-description.md`
- Task: `[ROLE]-US01-description.md`
- Role: `PM`, `DES`, `FA`, `BE`, `QA`

## Status Lifecycle

```text
Draft
→ Needs Refinement
→ Ready for Breakdown
→ Technical Review
→ Approved for Sync
→ Synced
→ Verified
```

## Workflow

1. Susun ide awal di `planning/`.
2. Salin template Epic ke `backlog/epics/`.
3. Salin template User Story ke `backlog/user-stories/`.
4. Setelah story dan AC jelas, salin Task Template ke `backlog/tasks/`.
5. Minta role terkait memvalidasi task, dependency, estimate, dan owner.
6. Jalankan validasi lokal:

   ```bash
   ./automation/validate-backlog.sh
   ```

7. Lihat rencana sinkronisasi:

   ```bash
   ./automation/sync-backlog.sh --dry-run
   ```

8. Mode `--apply` baru boleh diaktifkan setelah konfigurasi GitHub dan approval gate selesai dibuat.

## AI Boundaries

AI boleh membuat draft:

- context;
- Acceptance Criteria;
- candidate tasks;
- related AC;
- candidate dependencies;
- missing information dan open questions.

AI tidak boleh menetapkan tanpa validasi manusia:

- final priority;
- assignee;
- estimate;
- technical architecture;
- final dependency;
- approval;
- perubahan GitHub dalam mode apply.

Gunakan `null`, list kosong, atau status `Draft` untuk keputusan yang belum dibuat.

## Source of Truth

- Sebelum sinkronisasi: file Markdown.
- Setelah sinkronisasi: GitHub Issue untuk isi pekerjaan dan GitHub Project untuk metadata operasional.
- `sync-map.json` hanya diperbarui oleh automation setelah sinkronisasi berhasil.

