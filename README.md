# README
1. git cloneする
2. bundle install
3. slack tokenを環境変数に設定する
export ENV['SLACK_API_TOKEN']='あなたのslack api token'
4. rails s

# API
http://www.rubydoc.info/gems/slack-ruby-client
メッセージ一覧の取得
http://www.rubydoc.info/gems/slack-ruby-client/Slack/Web/Api/Endpoints/Channels#channels_history-instance_method
メッセージ削除
http://www.rubydoc.info/gems/slack-ruby-client/Slack/Web/Api/Endpoints/Chat#chat_delete-instance_method
