# glyfull-workspace セットアップ手順

Claude Codeでチーム全員が同じAI指示を共有するための設定です。
初回のみ以下の手順を実施してください。（所要時間: 3分）

---

## 手順

### 1. ターミナルを開く

Mac の場合: `command + スペース` → 「ターミナル」と入力して起動

### 2. 以下のコマンドを順番にコピペして実行

```bash
# リポジトリをホームに取得
git clone https://github.com/aikawaharuyasu-code/glyfull-workspace.git ~/glyfull-workspace

# 実行権限を付与
chmod +x ~/glyfull-workspace/.claude/hooks/startup.sh
```

### 3. Claude Codeを起動する時は、このフォルダで起動する

```bash
cd ~/glyfull-workspace
claude
```

これだけで完了です。

---

## 仕組み

- `CLAUDE.md` にglyfullの世界観・業務ルール・AI出力ルールが書かれている
- Claude Code起動時に自動で `git pull` が走り、常に最新のルールが適用される
- ルールの更新は相川が行う。各自は何もしなくてOK

## 困ったら

- **Claudeが何も知らない状態になる** → `~/glyfull-workspace` フォルダでClaude起動しているか確認
- **古いルールのまま** → `cd ~/glyfull-workspace && git pull` を手動実行
