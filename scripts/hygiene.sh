#!/bin/bash
# Repository hygiene of every pearOS repository (CI): run from the root of a checkout (full history).
#   - no trace of Claude/Anthropic in any commit message
#   - no Apple binaries (dyld cache, dylibs, frameworks) tracked
#   - README, LICENSE and NOTICE exist; upstream/ has a PROVENANCE.md
#   - every shell script parses (bash -n), every Python file compiles, every workflow is valid YAML
fail=0; say() { echo "::error::$*"; fail=1; }
bad=$(git log --all --format='%h %s%n%b' | grep -iE 'claude|anthropic' | head -3); [ -n "$bad" ] && say "commit message mentions Claude/Anthropic: $bad"
apple=$(git ls-files | grep -E '(^|/)dyld_shared_cache|\.dylib$|\.framework/|(^|/)Assets\.car\.xz$' | grep -v '^upstream/' | head -3); [ -n "$apple" ] && say "Apple binary tracked: $apple"
for f in README LICENSE NOTICE; do ls | grep -qi "^$f" || say "missing $f"; done
[ -d upstream ] && [ ! -f PROVENANCE.md ] && say "upstream/ without PROVENANCE.md"
for f in $(git ls-files '*.sh' | grep -v '^upstream/'); do bash -n "$f" 2>/dev/null || say "shell syntax error: $f"; done
for f in $(git ls-files '*.py' | grep -v '^upstream/'); do python3 -m py_compile "$f" 2>/dev/null || say "python error: $f"; done
if ls .github/workflows/*.yml >/dev/null 2>&1; then python3 -c "
import sys,yaml
for f in sys.argv[1:]:
    try: yaml.safe_load(open(f))
    except Exception as e: print('::error::bad workflow',f,e); sys.exit(1)" .github/workflows/*.yml || fail=1; fi
find . -name __pycache__ -prune -exec rm -rf {} + 2>/dev/null
[ $fail = 0 ] && echo "hygiene ok"; exit $fail
