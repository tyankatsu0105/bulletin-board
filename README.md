# Bulletin Board

- Ruby on Rails
  - API mode
- Next.js

## Development

.env.example を参考に、.env を作成してください。

```bash
brew install libyaml
```

## Setup

### Initial setup

postgresql のために libpg が必要です。

```bash
brew install libpg
```

pg_config の場所を知るために以下を実行して、libpg のパスを調べてください。

```bash
brew info libpg

==> libpq: stable 16.0 (bottled) [keg-only]
Postgres C API library
https://www.postgresql.org/docs/current/libpq.html
/opt/homebrew/Cellar/libpq/16.0 (2,379 files, 29.5MB)

bundle config build.pg --with-pg-config=/opt/homebrew/Cellar/libpq/16.0/bin/pg_config
bundle install
```

```bash
make setup-bundler
make up
make createdb
```

### Start App

```bash
make up
```
