#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
project_dir="$(cd "$script_dir/.." && pwd)"

required_fields=(
  "schema_version:"
  "local_id:"
  "type:"
  "title:"
  "status:"
  "sync:"
)

failed=0
checked=0

while IFS= read -r file; do
  checked=$((checked + 1))
  file_failed=0

  for field in "${required_fields[@]}"; do
    if ! grep -q "^${field}" "$file"; then
      printf 'FAIL %s: missing %s\n' "${file#$project_dir/}" "$field"
      file_failed=1
      failed=1
    fi
  done

  if [[ "$file_failed" -eq 0 ]]; then
    printf 'PASS %s\n' "${file#$project_dir/}"
  fi
done < <(find "$project_dir/backlog" -type f -name '*.md' | sort)

if [[ "$checked" -eq 0 ]]; then
  printf 'INFO No backlog Markdown files found. Copy a template into backlog first.\n'
  exit 0
fi

if [[ "$failed" -ne 0 ]]; then
  printf 'Validation failed. Fix the reported files before dry-run or sync.\n'
  exit 1
fi

printf 'Validation passed for %d file(s).\n' "$checked"

