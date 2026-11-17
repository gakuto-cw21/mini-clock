# ミニ時計 / Mini Clock

アドレスバーのない小さなウィンドウで表示できる、Windows向け時計アプリです。
Edge / Chrome 対応。外部ライブラリ・サーバー処理なし。PCのシステム時刻を表示します。

## ダウンロード（会社PCでもGitHubが許可されていれば利用可能）

**[ソース一式をZIPでダウンロード](https://github.com/gakuto-cw21/mini-clock/archive/refs/heads/main.zip)**

1. ZIPをダウンロードし、展開してください。
2. Edgeなら `open_clock.bat`、Chromeなら `open_clock_chrome.bat` を実行します。
3. アドレスバーのない独立したウィンドウが開きます。

起動ファイルが組織のセキュリティ設定でブロックされる場合、`index.html` をブラウザで直接開くと、通常のタブで時計として使用できます。

## ブラウザだけで利用する場合（GitHub Pages）

GitHub Pagesを有効にすると、ブラウザから直接表示できます。

1. リポジトリの **Settings → Pages** を開きます。
2. **Build and deployment → Deploy from a branch** を選びます。
3. Branch を **main**、Folder を **/(root)** にして **Save** します。
4. 有効化後は https://gakuto-cw21.github.io/mini-clock/ で開けます。

Edgeでは「アプリとしてインストール」するとアドレスバーなしの別ウィンドウにできます。会社のPCでアプリのインストールやスクリプト実行が制限されている場合は、組織の規定に従ってください。

## 機能

- 日付と現在時刻を表示（秒・日付の表示切り替え）
- ダーク / ライト切り替え
- 日時をクリップボードにコピー
- インターネット接続不要でオフライン実行

※ Windowsのタイトルバーは残ります。最前面への固定機能はありません。
