##Devise ーすでにモデルがある場合ー

1. Gemfileに gem 'devise'書いて保存

1. コンソールで`bundle istall`実行

1. コンソールで`rails g devise:install`実行

1. ４つの設定
	1. デフォURLを、`config/environments/development.rb`の属性が近そうなところへ<br>（config.action_mailer...の付近）
	
	1. そのURLで表示するページの指定をroutesに書く<br>（すでにget "/" => "Top#index"があったので、同義だけれどもコンソールのメッセージにしたがってroot to:  "Top#index"に書き直してみる)
	
	1. フラッシュの設定をapplication.html.erbの<body>直下へ加筆
	
	4. ビューをいじりたいので、コンソールで`rails g devise:views`
	
1. コンソールで`rails g devise user`実行<br>★昨晩勘違いしてコメントアウト外した`t.timestamps null: false`は「`created_at`や`updated_at`が今あるテーブルにないのならコメント外して」とあるため、多分大概はコメントアウトのままのはず。
1. コンソールで`rails db:migrate`実行
1. ここで エラーがでた
2. 
```
QLite3::ConstraintException: UNIQUE constraint failed: users.email: 
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email")
```


	調べてみると、emailって言ってるけれど、レコードが登録されていることがまずいらしい。
	
	>あなたが最初に作ったusersテーブル、データー入ってるよね？<br>
	↓<br>
	ってことはプライマリキー１にすでにデーター入ってるよね？<br>
	↓<br>
	新しくカラム追加するにあたり、プライマリキーがかぶっちゃうんでじゃまなんですけど（？）<br>
	
	そこでSQLiteでDelete Recordをして、ユーザー３人に消えてもらい、`rails db:migrate`したらできた。

1. 日本語に直す<br>
参考：[日本語化](http://31webcreation.hatenablog.com/entry/translate-devise-to-japanese)<br>
自分で適当に直すなら…<br>
`app/views/deviseにあるhtml.erb`中の`f.label`を書き換える。

	```
ユーザー登録画面：debise/registrations/new.html.erb<br>
ユーザー情報編集画面：debise/registrations/edit.html.erb<br>
ログイン画面：debise/sessions/new.html.erb<br>
ヘッダー部分：debise/shared/_links.html.erb<br>
```

1. ログインしたあと、自分の好きなページを表示させてみる
`application_controller.rb`にメソッドを追加。	

	```
def after_sign_in_path_for(resource)
  users_path
  (↑ここは表示させたいページのURLを)
end
```
