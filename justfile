demo-py-script := source_dir() / "tests/bad.py"

@help:
    just -l -u

[no-cd]
vi scheme='sunset' file=demo-py-script:
    nvim --cmd "set rtp+={{ justfile_dir() }}" +"colorscheme {{ scheme }}" {{ file }}

# Bump version
bump kind:
    bump {{ kind }} -p
