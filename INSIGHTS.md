## Formula maintenance

- For `seezatnap/*` repos, `https://api.github.com/repos/<owner>/<repo>/releases/latest` can return `null` fields even when newer tags exist. For version bumps, check `.../tags` and select the newest semver tag, then recompute `sha256` from the `archive/refs/tags/<tag>.tar.gz` URL used by the formula.
- Some Rust repos may be workspace-only at the root (no root `[package]`). When packaging a binary crate from `crates/*`, it can be necessary to pass `std_cargo_args(path: "crates/<crate-name>")` in the formula install step; this may vary if the repo layout changes later.
