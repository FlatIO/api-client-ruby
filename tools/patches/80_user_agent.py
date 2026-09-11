#!/usr/bin/env python3
"""Flat-branded User-Agent that tracks the gem version. Idempotent."""

from __future__ import annotations

import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent.parent
TARGET = ROOT / "lib" / "flat_api" / "api_client.rb"

text = TARGET.read_text()
pattern = re.compile(r'@user_agent = "[^"]*"')
if not pattern.search(text):
    sys.exit("80_user_agent: could not find the @user_agent assignment (FR-025)")

# VERSION already tracks the gem version, so this cannot drift.
text = pattern.sub(
    '@user_agent = "Flat-SDK-Ruby/#{FlatApi::VERSION} (ruby/#{RUBY_VERSION})"',
    text,
    count=1,
)
TARGET.write_text(text)
print("    user-agent: Flat-SDK-Ruby/<version>")
