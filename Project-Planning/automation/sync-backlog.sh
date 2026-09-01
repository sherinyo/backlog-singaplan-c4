#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
project_dir="$(cd "$script_dir/.." && pwd)"
mode="${1:---dry-run}"

case "$mode" in
  --dry-run)
    "$script_dir/validate-backlog.sh"
    printf '\nDry-run candidates:\n'
    find "$project_dir/backlog" -type f -name '*.md' -print | sort | sed "s#^$project_dir/##"
    printf '\nNo GitHub data was changed.\n'
    ;;
  --apply)
    printf 'Apply mode is intentionally disabled in template v0.1.\n'
    printf 'Configure repository, project fields, approval validation, duplicate detection, and rollback rules first.\n'
    exit 2
    ;;
  *)
    printf 'Usage: %s [--dry-run|--apply]\n' "$0"
    exit 1
    ;;
esac

