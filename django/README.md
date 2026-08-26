# Django Project

スケルトン Django プロジェクト

## セットアップ

### 1. 仮想環境の作成
```bash
python -m venv venv
source venv/bin/activate  # macOS/Linux
# または
venv\Scripts\activate  # Windows
```

### 2. 依存関係のインストール
```bash
pip install -r requirements.txt
```

### 3. 環境変数の設定
```bash
cp .env.example .env
# .envファイルを適切に編集してください
```

### 4. マイグレーション
```bash
python manage.py migrate
```

### 5. スーパーユーザーの作成
```bash
python manage.py createsuperuser
```

### 6. 開発サーバーの起動
```bash
python manage.py runserver
```

## ローカルデバッグ起動

便利な起動スクリプトが用意されています。

### 基本的なデバッグサーバー起動
```bash
./start-debug.sh
```
- 仮想環境を自動的に作成・有効化
- 依存関係をインストール
- マイグレーションを実行
- 開発サーバーを http://127.0.0.1:8000 で起動

### カスタムポート指定で起動
```bash
./start-debug-port.sh 8080
```
- ポート番号を指定して起動（デフォルト: 8000）
- 複数のプロジェクトを同時に実行する場合に便利

### Django シェル起動
```bash
./start-shell.sh
```
- Python対話シェルが起動
- ORM や モデルのテストに便利
- `exit()` で終了

## ディレクトリ構造

```
django/
├── manage.py              # Django管理コマンド
├── requirements.txt       # Python依存パッケージ
├── .env.example          # 環境変数のサンプル
├── .gitignore            # Gitで無視するファイル
├── start-debug.sh        # デバッグサーバー起動スクリプト
├── start-debug-port.sh   # カスタムポート指定で起動
├── start-shell.sh        # Django シェル起動スクリプト
├── beacon/               # プロジェクト設定ディレクトリ
│   ├── __init__.py
│   ├── settings.py       # プロジェクト設定
│   ├── urls.py           # URLルーティング
│   ├── asgi.py           # ASGIアプリケーション
│   └── wsgi.py           # WSGIアプリケーション
├── templates/            # HTML テンプレート
└── static/               # 静的ファイル (CSS, JS, 画像など)
```

## 次のステップ

1. アプリケーションを作成：
   ```bash
   python manage.py startapp myapp
   ```

2. モデルを定義：
   - `myapp/models.py` でモデルを定義

3. ビューを作成：
   - `myapp/views.py` でビューを作成
   - `myproject/urls.py` でURLをマッピング

4. テンプレートを作成：
   - `templates/` フォルダにHTMLテンプレートを作成

## 参考資料

- [Django公式ドキュメント](https://docs.djangoproject.com/)
