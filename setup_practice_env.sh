#!/bin/bash

# メインディレクトリの作成
mkdir -p linux_practice
cd linux_practice

# 練習問題ファイルの作成
cat > linux_exercises.txt << 'EOL'
# Linux コマンド練習問題集

## 初級編（100問）

### ファイル・ディレクトリ操作基礎
1. カレントディレクトリの内容を表示するコマンドは何ですか？
2. ディレクトリを作成するコマンドは何ですか？
[... 練習問題の内容 ...]
EOL

# 基本的なディレクトリ構造の作成
mkdir -p basic/{file_operations/{empty_files,text_files,documents},permissions/{scripts,secure},viewing/{logs,data}}
mkdir -p intermediate/{search_exercises/{logs,documents},text_processing/{csv_files,log_files,data_files},advanced_operations}

# サンプルテキストファイルの作成
cd basic/file_operations/text_files
echo "これは最初のファイルです。" > file1.txt
echo "これは2番目のファイルです。" > file2.txt
echo "重要な注意事項が書かれたファイルです。" > notes.txt

# スクリプトファイルの作成
cd ../../permissions/scripts
cat > backup.sh << 'EOL'
#!/bin/bash
echo "バックアップを開始します..."
# バックアップ処理のサンプルコード
EOL

cat > test.sh << 'EOL'
#!/bin/bash
echo "テストスクリプトです"
# テスト用のサンプルコード
EOL

chmod +x backup.sh test.sh

# ログファイルの作成
cd ../../../intermediate/search_exercises/logs

# application.log の作成
cat > app.log << 'EOL'
2024-03-15 10:00:01 INFO  Application started successfully
2024-03-15 10:15:23 WARNING  High memory usage detected
2024-03-15 10:30:45 ERROR  Database connection failed
2024-03-15 10:31:01 INFO  Retrying database connection
2024-03-15 10:31:05 INFO  Database connection restored
2024-03-15 11:00:00 INFO  Processing daily backup
2024-03-15 11:30:12 WARNING  Disk usage above 80%
EOL

# error.log の作成
cat > error.log << 'EOL'
[2024-03-15 08:15:30] CRITICAL: System crash detected
[2024-03-15 09:20:45] ERROR: Unable to load configuration file
[2024-03-15 10:45:12] ERROR: Invalid user input
[2024-03-15 12:30:00] ERROR: Memory allocation failed
[2024-03-15 14:20:18] CRITICAL: Security breach detected
EOL

# access.log の作成
cat > access.log << 'EOL'
192.168.1.100 - - [15/Mar/2024:10:00:01 +0900] "GET /index.html HTTP/1.1" 200 2326
192.168.1.101 - - [15/Mar/2024:10:00:05 +0900] "GET /images/logo.png HTTP/1.1" 200 4580
192.168.1.102 - - [15/Mar/2024:10:00:10 +0900] "POST /login HTTP/1.1" 302 0
192.168.1.103 - - [15/Mar/2024:10:00:15 +0900] "GET /api/users HTTP/1.1" 403 1234
192.168.1.104 - - [15/Mar/2024:10:00:20 +0900] "GET /admin HTTP/1.1" 404 890
EOL

# CSVファイルの作成
cd ../../text_processing/csv_files
cat > data.csv << 'EOL'
ID,名前,年齢,部署
1,山田太郎,28,営業部
2,鈴木花子,35,総務部
3,佐藤次郎,42,技術部
4,田中美咲,31,営業部
5,伊藤健一,45,技術部
EOL

# 大きなログファイルの生成
cd ../log_files
for i in {1..1000}; do
    echo "$(date -v-${i}H +'%Y-%m-%d %H:%M:%S') INFO  Log entry $i" >> large_log.log
    echo "$(date -v-${i}H +'%Y-%m-%d %H:%M:%S') DEBUG Debug message $i" >> large_log.log
    if [ $((i % 100)) -eq 0 ]; then
        echo "$(date -v-${i}H +'%Y-%m-%d %H:%M:%S') ERROR Error occurred at entry $i" >> large_log.log
    fi
done

# データファイルの作成
cd ../data_files
cat > numbers.txt << 'EOL'
1
2
3
4
5
10
20
30
40
50
EOL

# パーミッションの設定
cd ../../../../
chmod 755 basic/permissions/scripts/*.sh
chmod 600 basic/file_operations/text_files/notes.txt

echo "練習環境の作成が完了しました。"
EOL

このスクリプトを実行することで、以下のような特徴を持つ練習環境が作成されます：

1. 様々な種類のログファイル（アプリケーションログ、エラーログ、アクセスログ）
2. 異なるパーミッションを持つファイル
3. CSVファイルやテキストファイル
4. 実行可能なシェルスクリプト
5. 大量のログエントリを含む大きなログファイル

この環境では以下のような練習が可能です：

- `grep`や`awk`を使用したログ解析
- ファイルパーミッションの操作
- ファイルの検索と操作
- テキスト処理
- ファイル内容の表示と編集

環境を作成するには、このスクリプトを保存して実行するだけです。作成を進めてよろしいでしょうか？

また、以下のような追加の要素も用意できます：

1. バイナリファイル
2. 圧縮ファイル
3. シンボリックリンク
4. 特殊なパーミッションを持つファイル

これらの追加要素も含めた方がよろしいでしょうか？