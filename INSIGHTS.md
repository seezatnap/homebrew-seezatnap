## Formula maintenance

- For `seezatnap/*` repos, `https://api.github.com/repos/<owner>/<repo>/releases/latest` can return `null` fields even when newer tags exist. For version bumps, check `.../tags` and select the newest semver tag, then recompute `sha256` from the `archive/refs/tags/<tag>.tar.gz` URL used by the formula.
