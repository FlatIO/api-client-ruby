#!/usr/bin/env python3
"""Verify the generated Ruby code carries the specification's documentation (FR-004).

Ruby uses leading `#` comment lines rather than block comments, so this counts the contiguous
comment block immediately above each public operation.

Idempotent: it inspects and reports, it does not rewrite.
"""

from __future__ import annotations

import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent.parent
API_DIR = ROOT / "lib" / "flat_api" / "api"

THRESHOLD = 0.95
OPERATION = re.compile(r"^    def ([a-z0-9_]+)\(", re.M)


def main() -> int:
    if not API_DIR.is_dir():
        print("    docs: no generated api/ directory", file=sys.stderr)
        return 1

    total = documented = 0
    undocumented: list[str] = []

    for path in sorted(API_DIR.glob("*.rb")):
        lines = path.read_text().splitlines()
        for index, line in enumerate(lines):
            match = OPERATION.match(line)
            name = match.group(1) if match else ""
            # initialize is the constructor, not an API operation.
            if not match or name.endswith("_with_http_info") or name == "initialize":
                continue
            total += 1
            # Walk back over the contiguous comment block directly above the definition.
            comment: list[str] = []
            cursor = index - 1
            while cursor >= 0 and lines[cursor].strip().startswith("#"):
                comment.append(lines[cursor].strip().lstrip("#").strip())
                cursor -= 1
            if len(" ".join(comment)) > 20:
                documented += 1
            else:
                undocumented.append(f"{path.name}:{match.group(1)}")

    if total == 0:
        print("    docs: no operations found to check", file=sys.stderr)
        return 1

    ratio = documented / total
    print(f"    docs: {documented}/{total} operations documented ({ratio:.1%})")

    if ratio < THRESHOLD:
        print(f"    docs: FAIL below {THRESHOLD:.0%} (FR-004)", file=sys.stderr)
        for name in undocumented[:10]:
            print(f"      undocumented: {name}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
