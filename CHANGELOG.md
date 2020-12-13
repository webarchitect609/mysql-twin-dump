Changelog
=========

0.2.0
-----

### Changed:
- Help message formatted and well-tuned

### BREAKING CHANGES
- Option `--exclude-content` or `-e` can be repeated multiple times, no more need to specify tables in double quotes
  separated by spaces

0.1.0
-----

### Added:
- Option `--exclude-content` — to specify tables with ignored content
- More new options `--quiet`, `--bzip2` and `--help`  

### BREAKING CHANGES
- Default behaviour: write in **stdout**, don't compress by `bzip2`, don't use password

0.0.2
-----

### Added:
- `--skip-lock-tables` and `--set-gtid-purged=OFF` options are added

0.0.1
-----

### Added:
- Command line options support
