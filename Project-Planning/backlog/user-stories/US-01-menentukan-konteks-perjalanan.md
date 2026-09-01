---
schema_version: "1.0"

local_id: "US-01"
type: "User Story"
title: "Menentukan Konteks Perjalanan"
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
    - "Kesepakatan mengenai informasi konteks perjalanan yang wajib diisi."
    - "Kesepakatan mengenai format dan satuan budget."
    - "Desain awal alur perencanaan perjalanan."
  blocking:
    - "US-02"
    - "US-03"
    - "US-04"

planned_sub_issues: []

sync:
  mode: "apply"
  approved_by:
    - "sherinyo"
  approved_at: "2026-09-01"
  github_issue_number: 2
  github_issue_url: "https://github.com/sherinyo/backlog-singaplan-c4/issues/2"
  last_synced_at: "2026-09-01T09:36:43+07:00"
---

# [US-01] Menentukan Konteks Perjalanan

## User Story

Sebagai **traveler**, saya ingin **memasukkan konteks dasar perjalanan**, sehingga **sistem dapat menggunakan informasi tersebut sebagai dasar untuk menentukan preferensi dan membandingkan destinasi yang relevan**.

## Context

Kebutuhan dan keputusan traveler dipengaruhi oleh kondisi perjalanan, seperti tanggal atau durasi perjalanan, batas budget, serta tipe perjalanan. Informasi ini perlu ditentukan sejak awal agar proses pencarian dan perbandingan destinasi tidak memberikan hasil yang terlalu umum atau tidak sesuai dengan situasi traveler.

## User Outcome

- Traveler memiliki konteks perjalanan yang tersimpan dan dapat digunakan sebagai dasar untuk melanjutkan ke pengaturan preferensi harian serta perbandingan destinasi.

## Acceptance Criteria

### AC-01-1 — Mengisi konteks perjalanan

**Given** traveler belum memiliki konteks perjalanan yang tersimpan,  
**When** traveler mengisi tanggal atau jumlah hari perjalanan, batas budget, dan tipe perjalanan,  
**Then** sistem menampilkan kembali informasi tersebut untuk diperiksa sebelum disimpan.

### AC-01-2 — Menyimpan konteks perjalanan

**Given** seluruh informasi wajib telah diisi dengan format yang valid,  
**When** traveler memilih untuk melanjutkan,  
**Then** sistem menyimpan konteks perjalanan dan menggunakannya sebagai dasar untuk tahap perencanaan berikutnya.

### AC-01-3 — Menangani informasi wajib yang belum lengkap

**Given** terdapat informasi wajib yang belum diisi,  
**When** traveler mencoba melanjutkan,  
**Then** sistem tidak menyimpan konteks perjalanan dan menunjukkan informasi yang masih harus dilengkapi.

### AC-01-4 — Menangani nilai budget yang tidak valid

**Given** traveler sedang mengisi batas budget,  
**When** traveler memasukkan nilai kosong, negatif, atau menggunakan format yang tidak didukung,  
**Then** sistem menampilkan pesan kesalahan dan meminta traveler memperbaiki nilai tersebut.

### AC-01-5 — Mengubah konteks perjalanan

**Given** traveler telah menyimpan konteks perjalanan,  
**When** traveler mengubah tanggal atau durasi, budget, maupun tipe perjalanan,  
**Then** sistem menyimpan perubahan dan menggunakan konteks terbaru untuk proses selanjutnya.

## In-Scope

- Mengisi tanggal perjalanan atau jumlah hari perjalanan.
- Mengisi batas budget perjalanan.
- Memilih tipe perjalanan, seperti solo, bersama teman, atau keluarga.
- Memeriksa kelengkapan informasi wajib.
- Menyimpan konteks perjalanan.
- Mengubah konteks perjalanan yang telah disimpan.

## Out-of-Scope

- Menentukan destinasi secara otomatis.
- Mengatur preferensi destinasi untuk setiap hari.
- Membandingkan kandidat destinasi.
- Menghitung seluruh biaya perjalanan secara terperinci.
- Mengundang atau menambahkan anggota perjalanan.
- Melakukan booking transportasi dan akomodasi.

## Dependencies

### Blocked By

- Kesepakatan mengenai informasi konteks perjalanan yang wajib diisi.
- Kesepakatan mengenai format dan satuan budget.
- Desain awal alur perencanaan perjalanan.

### Blocking

- US-02 — Menentukan Preferensi Harian.
- US-03 — Mencari Kandidat Destinasi.
- US-04 — Membandingkan Destinasi.
