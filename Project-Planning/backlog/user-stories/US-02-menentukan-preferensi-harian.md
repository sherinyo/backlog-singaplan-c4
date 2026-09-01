---
schema_version: "1.0"

local_id: "US-02"
type: "User Story"
title: "Menentukan Preferensi Harian"
parent_local_id: "EP-01"

status: "Synced"
priority: null
estimate: null
assignees: []
start_date: null
target_date: null

labels:
  - "user-story"

dependencies:
  blocked_by:
    - "US-01"
  blocking:
    - "US-03"
    - "US-04"

planned_sub_issues:
  - "PM-US02-01"
  - "DES-US02-01"
  - "TL-US02-01"
  - "DEV-US02-01"
  - "DEV-US02-02"
  - "DEV-US02-03"
  - "DEV-US02-04"
  - "QA-US02-01"

sync:
  mode: "apply"
  approved_by: ["sherinyo"]
  approved_at: "2026-09-01"
  github_issue_number: 3
  github_issue_url: "https://github.com/sherinyo/backlog-singaplan-c4/issues/3"
  last_synced_at: "2026-09-01T10:42:01+07:00"
---

# [US-02] Menentukan Preferensi Harian

## User Story

Sebagai **traveler**, saya ingin **menentukan preferensi budget, accessibility, dan experience untuk satu hari perjalanan**, sehingga **kandidat destinasi yang saya pertimbangkan sesuai dengan kebutuhan dan kondisi perjalanan pada hari tersebut**.

## Context

Konteks perjalanan memberikan gambaran umum, tetapi kebutuhan traveler dapat berbeda untuk setiap hari. Traveler perlu menentukan preferensi yang berlaku pada hari tertentu agar pencarian dan perbandingan destinasi berikutnya menggunakan kriteria yang relevan.

## User Outcome

- Traveler memiliki preferensi yang tersimpan untuk hari yang dipilih dan dapat menggunakannya sebagai dasar pencarian serta perbandingan destinasi.

## Acceptance Criteria

### AC-02-1 — Memilih hari perjalanan

**Given** traveler telah memiliki konteks perjalanan yang tersimpan,  
**When** traveler membuka pengaturan preferensi harian,  
**Then** sistem memungkinkan traveler memilih satu hari yang tersedia dalam itinerary.

### AC-02-2 — Mengisi preferensi harian

**Given** traveler telah memilih satu hari perjalanan,  
**When** traveler menentukan preferensi budget, accessibility, dan experience,  
**Then** sistem menampilkan seluruh pilihan tersebut sebagai preferensi untuk hari yang dipilih.

### AC-02-3 — Menyimpan preferensi per hari

**Given** seluruh preferensi wajib untuk hari yang dipilih telah diisi secara valid,  
**When** traveler menyimpan preferensi,  
**Then** sistem menyimpan preferensi pada hari tersebut dan tidak menerapkannya secara otomatis ke hari lain.

### AC-02-4 — Menangani preferensi yang belum lengkap

**Given** terdapat preferensi wajib yang belum dipilih,  
**When** traveler mencoba menyimpan preferensi harian,  
**Then** sistem tidak menyimpan perubahan dan menunjukkan preferensi yang masih perlu dilengkapi.

### AC-02-5 — Mengubah preferensi harian

**Given** traveler telah menyimpan preferensi untuk suatu hari,  
**When** traveler mengubah salah satu preferensi dan menyimpannya kembali,  
**Then** sistem menggunakan preferensi terbaru untuk hari tersebut tanpa mengubah preferensi hari lain.

## In-Scope

- Memilih satu hari dari konteks perjalanan yang tersimpan.
- Menentukan preferensi budget untuk hari yang dipilih.
- Menentukan kebutuhan accessibility untuk hari yang dipilih.
- Menentukan experience yang diinginkan untuk hari yang dipilih.
- Memvalidasi, menyimpan, dan mengubah preferensi harian.

## Out-of-Scope

- Membuat rekomendasi destinasi secara otomatis.
- Mencari atau memilih kandidat destinasi.
- Membandingkan kandidat destinasi.
- Mengubah konteks dasar perjalanan.
- Menyalin preferensi ke beberapa hari sekaligus.

## Dependencies

### Blocked By

- US-01 — Menentukan Konteks Perjalanan.

### Blocking

- US-03 — Mencari Kandidat Destinasi.
- US-04 — Membandingkan Destinasi.
