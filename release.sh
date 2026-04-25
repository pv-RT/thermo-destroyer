# --- Working tree must be clean -----------------------------------------

if [[ -n $(git status --porcelain) ]]; then
  echo "release: working tree is not clean:" >&2
  git status --short >&2
  exit 1
fi

# --- Must be on main ----------------------------------------------------

branch=$(git rev-parse --abbrev-ref HEAD)
[[ $branch == "main" ]] \
  || fail "not on main (currently on $branch)"

# --- Compile ------------------------------------------------------------

typst compile thermo1.typ
typst compile thermo2.typ