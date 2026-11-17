# ミニ時計 / Mini Clock

アドレスバーのない小さなウィンドウで表示できる、Windows向け時計アプリです。
Edge / Chrome 対応。外部ライブラリ・サーバー処理なし。PCのシステム時刻を表示します。

## ダウンロード

**[ソース一式をZIPでダウンロード](https://github.com/gakuto-cw21/mini-clock/archive/refs/heads/main.zip)**

1. ZIPをダウンロードし、展開してください。
2. Edgeなら `open_clock.bat`、Chromeなら `open_clock_chrome.bat` を実行します。
3. アドレスバーのない独立したウィンドウが開きます。
4. 時計にマウスを重ねて **最前面** を押すと、時計が常に手前に表示されます。

起動ファイルを使用しない場合は、`index.html` をブラウザで直接開いて時計を表示できます。

## ブラウザだけで利用する場合（GitHub Pages）

GitHub Pagesを有効にすると、ブラウザから直接表示できます。

1. リポジトリの **Settings → Pages** を開きます。
2. **Build and deployment → Deploy from a branch** を選びます。
3. Branch を **main**、Folder を **/(root)** にして **Save** します。
4. 有効化後は https://gakuto-cw21.github.io/mini-clock/ で開けます。

Edgeでは「アプリとしてインストール」すると、アドレスバーなしの別ウィンドウにできます。

## 最前面に固定する（PiP）

Chrome / Edge 116以降など、Document Picture-in-Picture に対応したブラウザで利用できます。

1. 時計の上にマウスを置いて **最前面** ボタンをクリックします。
2. 小さな時計が別ウィンドウで表示され、ほかのアプリに切り替えても前面に残ります。
3. 元の時計ウィンドウは閉じずに最小化します。元のウィンドウを閉じると最前面表示も終了します。
4. 解除したい場合は浮いている時計の **解除** をクリックするか、PiPウィンドウを閉じてください。

対応していないブラウザでは **最前面** ボタンを表示しません。別の方法として、Windowsの Microsoft PowerToys「Always On Top」を利用すると、対象ウィンドウを **Win + Ctrl + T** で固定できます。

## 機能

- 日付と現在時刻を表示（秒・日付の表示切り替え）
- ダーク / ライト切り替え
- 日時をクリップボードにコピー
- インターネット接続不要でオフライン実行
- 対応ブラウザで最前面表示（Document Picture-in-Picture）

※ 通常のアプリモードはWindowsのタイトルバーが残ります。PiPのウィンドウ装飾や最小サイズはブラウザによって異なります。
