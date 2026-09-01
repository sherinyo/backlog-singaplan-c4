---
schema_version: "1.0"

local_id: "EP-01"
type: "Epic"
title: "Perencanaan Destinasi untuk Itinerary Harian"
parent_local_id: null

status: "Draft"
priority: null
estimate: null
assignees: []
start_date: null
target_date: null

labels:
  - "epic"

dependencies:
  blocked_by:
    - "Ketersediaan dan struktur data destinasi."
    - "Kesepakatan mengenai atribut budget, accessibility, dan experience."
    - "Hasil validasi feasibility bersama tim teknis."
  blocking:
    - "US-01"
    - "US-02"
    - "US-03"
    - "US-04"
    - "US-05"

children:
  - "US-01"
  - "US-02"
  - "US-03"
  - "US-04"
  - "US-05"

sync:
  mode: "draft"
  approved_by: []
  approved_at: null
  github_issue_number: null
  github_issue_url: null
  last_synced_at: null
---

# [EP-01] Perencanaan Destinasi untuk Itinerary Harian

## Problem

Traveler kesulitan menentukan tempat yang paling sesuai untuk itinerary harian karena informasi mengenai budget, accessibility, dan experience tersebar di berbagai platform. Banyaknya pilihan dan perbedaan informasi membuat traveler harus membandingkan tempat secara manual, menghabiskan waktu lebih lama, dan tetap merasa tidak yakin dengan pilihannya.

## Objective

Membantu traveler membandingkan dan memilih destinasi berdasarkan konteks perjalanan dan preferensi hariannya agar proses penyusunan itinerary menjadi lebih terarah, cepat, dan meyakinkan.

## Target User and Context

- **Target user:** Traveler yang sedang merencanakan perjalanan dan ingin menentukan tempat yang akan dikunjungi dalam satu hari.
- **Context:** Traveler telah memiliki rencana perjalanan awal, tetapi masih perlu menentukan destinasi yang sesuai dengan budget, accessibility, dan experience yang diinginkan.

## Epic Outcome

Traveler dapat menentukan konteks perjalanan, memasukkan preferensi harian, membandingkan beberapa kandidat destinasi dengan informasi yang setara, memilih destinasi, dan memasukkannya ke itinerary pada hari yang dipilih.

## In-Scope

- Menentukan konteks dasar perjalanan.
- Menentukan preferensi destinasi untuk satu hari.
- Mencari atau memilih kandidat destinasi.
- Membandingkan minimal tiga kandidat destinasi.
- Membandingkan berdasarkan budget, accessibility, dan experience.
- Menampilkan informasi yang tidak tersedia secara transparan.
- Memilih destinasi dari hasil perbandingan.
- Memasukkan destinasi terpilih ke itinerary harian.

## Out-of-Scope

- Booking dan pembayaran.
- Navigasi secara real-time.
- Pembuatan itinerary secara otomatis.
- Kolaborasi itinerary secara langsung dengan traveler lain.
- Optimasi rute perjalanan secara otomatis.
- Rekomendasi transportasi secara real-time.

## Acceptance Criteria

- [ ] Traveler dapat mengisi dan menyimpan konteks dasar perjalanan.
- [ ] Traveler dapat menentukan preferensi budget, accessibility, dan experience untuk satu hari.
- [ ] Traveler dapat melihat minimal tiga kandidat destinasi dalam format informasi yang konsisten.
- [ ] Traveler dapat mengetahui jika informasi tertentu belum tersedia tanpa sistem membuat asumsi data.
- [ ] Traveler dapat memilih satu destinasi dari hasil perbandingan.
- [ ] Traveler dapat memasukkan destinasi terpilih ke hari yang sesuai dalam itinerary.

## Dependencies

### Blocked By

- Ketersediaan dan struktur data destinasi.
- Kesepakatan mengenai atribut budget, accessibility, dan experience.
- Hasil validasi feasibility bersama tim teknis.

### Blocking

- US-01 — Menentukan Konteks Perjalanan.
- US-02 — Menentukan Preferensi Harian.
- US-03 — Mencari Kandidat Destinasi.
- US-04 — Membandingkan Destinasi.
- US-05 — Memilih dan Memasukkan Destinasi ke Itinerary.
