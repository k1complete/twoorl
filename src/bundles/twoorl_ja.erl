%% This file is part of Twoorl.
%% 
%% Twoorl is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%% 
%% Twoorl is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% along with Twoorl.  If not, see <http://www.gnu.org/licenses/>.

-module(twoorl_eng).
-export([bundle/1]).

bundle(Tag) ->
    case Tag of
	
	language -> <<"日本語">>;
	
	%% layout
	login -> <<"ログイン">>;
	register -> <<"新規登録">>;
	logged_in_as -> <<"ログイン中">>;
	settings -> <<"設定">>;
	logout -> <<"ログアウト">>;
	get_source ->
	    <<"<a href=\"http://code.google.com/p/twoorl\">"
	     "ソースコード</a>を取得">>;
	
	%% navbar
	home -> <<"ホーム">>;
	replies -> <<"リプライ">>;
	me -> <<"自分">>;
	everyone -> <<"公開">>;

	%% login page
	login_cap -> <<"ログイン">>;
	username -> <<"ユーザ名">>;
	password -> <<"パスワード">>;
	not_member -> <<"ユーザではない?">>;
	login_submit -> <<"ログイン">>;

	%% register page
	% note: 'username', 'password' and 'Login_cap' are taken from
	% login page section
	register_cap -> <<"新規登録">>;
	email -> <<"email">>;
	password2 -> <<"パスワード確認">>;
	already_member -> <<"ユーザですか?">>;

	%% home page
	upto -> <<"いまなにしてる?">>;
	twitter_msg -> <<"リプライでないメッセージを自動的に Twitter に投稿"
			"します">>;
	send -> <<"投稿">>;

	%% main page
	public_timeline -> <<"公開タイムライン">>;

	%% users page
	{no_user, Username} ->
	    [Username, <<" はいません">>];
	{timeline_of, Username} ->
	    [Username, <<"のタイムライン">>];
	following -> <<"フォローしている">>;
	followers -> <<"フォローされている">>;
	follow -> <<"フォローする">>;
	unfollow -> <<"フォローをやめる">>;

	%% friends page
	{friends_of, Userlink} ->
	    [<<" ">>, Userlink, <<" がフォローしている人">>];
	{followers_of, Userlink} ->
	    [Userlink, <<" がフォローされている人">>];
	{no_friends, Username} ->
	    [Username, <<" がフォローしている人はいません">>];
	{no_followers, Username} ->
	    [Username, <<" がフォローされている人はいません">>];


	%% settings page
	settings_cap -> <<"設定">>;
	use_gravatar -> <<"<a href=\"http://gravatar.com\" "
			 "target=\"_blank\">Gravatar</a>を使う?">>;
	profile_bg -> <<"Profile background">>;
	profile_bg_help ->
	    <<"背景画像のurlを入力してください"
	     "(空白ではデフォルトの背景を使用します):">>;
	twitter_help ->
	    <<"Twitterのアカウント情報を設定すると"
	     "twoorlから自動的に Twitter へも投稿することができます.<br/><br/>"
	     "リプライ(e.g."
	     "\"@sergey\")以外がTwitterへ投稿されます.">>;
	twitter_username -> <<"Twitter username:">>;
	twitter_password -> <<"Twitter password:">>;
	twitter_auto -> <<"Twoorlsから自動的にTwitterへ投稿しますか?">>;
	submit -> <<"保存">>;
	
	%% error messages
	{missing_field, Field} ->
	    [<<" ">>, Field, <<" フィールドは必須です">>];
	{username_taken, Val} ->
	    [<<"ユーザ名 '">>, Val, <<"' は既に登録済みです">>];
	{invalid_username, Val} ->
	    [<<"ユーザ名 '">>, Val,
	     <<"' は不正です。英数とアンダースコア('_') "
	      "のみで入力してください">>];
	invalid_login ->
	    <<"ユーザ名かパスワードが不正です">>;
	{too_short, Field, Min} ->
	    [<<" ">>, Field, <<" は短すぎます。(最低 ">>, Min,
	     <<" 文字必要です)">>];
	password_mismatch ->
	    <<"パスワードが一致しません">>;
	twitter_unauthorized ->
	    <<"Twitter は設定されたユーザ名/パスワードの組み合わせでは"
	     "接続を拒否しました">>;
	twitter_authorization_error ->
	    <<"Twitter に接続できません。 後で再度行ってください。">>;
	{invalid_url, Field} ->
	    [<<" ">>, Field, <<" URL は 'http://' で始まらないといけません">>];
	
	%% confirmation messages
	settings_updated ->
	    [<<"設定を保存しました">>];

	%% miscellaneous
	{seconds_ago, Val} -> [Val, <<" 秒前">>];
	{minutes_ago, Val} -> [Val, <<" 分前">>];
	{hours_ago, Val} -> [Val, <<" 時間前">>];
	{days_ago, Val} -> [Val, <<" 日前">>]
    end.
