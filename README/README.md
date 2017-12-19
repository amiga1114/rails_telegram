# 중요한 정보 관리 방법 : telegram token

## 1. `.gitignore` 연다.
```
# See https://help.github.com/articles/ignoring-files for more about ignoring files.
#
# If you find yourself ignoring temporary files generated by your text editor
# or operating system, you probably want to add a global ignore instead:
#   git config --global core.excludesfile '~/.gitignore_global'

# Ignore bundler config.
/.bundle

# Ignore the default SQLite database.
/db/*.sqlite3
/db/*.sqlite3-journal

# Ignore all logfiles and tempfiles.
/log/*
!/log/.keep
/tmp
```

## 2. `/config/secrets.yml` 추가한다.
```
# See https://help.github.com/articles/ignoring-files for more about ignoring files.
#
# If you find yourself ignoring temporary files generated by your text editor
# or operating system, you probably want to add a global ignore instead:
#   git config --global core.excludesfile '~/.gitignore_global'

# Ignore bundler config.
/.bundle

# Ignore the default SQLite database.
/db/*.sqlite3
/db/*.sqlite3-journal

# Ignore all logfiles and tempfiles.
/log/*
!/log/.keep
/tmp
/config/secrets.yml
```

## 3. `config/secrets.yml`에 토큰 정보 추가.
```yaml
development:
  secret_key_base: 3bab38190e038ea498fddf61b4647552f3d1e85e86725446764bcbb9fb1c7f34b03171f4f897ac4259289484cacde920eb87362deb054b0910c5458c366602a7
  telegram_token: 481221157:BBFnTx-rwL3eS1a-wedasdfBzFa6kQ1yioo
  # 여러분의 토큰

test:
  secret_key_base: 697724be22fcd036db2a5d43996fbff449577a9fffdc9acd09436f2b721301d1bd3148f422be827b16100044cdc01994ffc255fccb442b8b942fff7b90340928

# Do not keep production secrets in the repository,
# instead read values from the environment.
production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
```

## 4. 원래 파일에는 `Rails.application.secrets.telegram_token`으로 참조한다.
```ruby
Rails.application.secrets.키이름
```
## 5. 혹시 실수로 커밋 후에 올렸을 경우
### 1. Github repository를 지우고
### 2. `rm -rf .git` Git 관리 폴더를 지워준 후,
### 3. 다시 `git init`을 통해 관리해준다.