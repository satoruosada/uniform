<?php
require('function.php');

debug('「「「「「「「「「「「「「「「');
debug('「ログアウトページへ「「「「「「「「');
debug('「「「「「「「「「「「「「「「「「「「');
debugLogStart();

debug('ログアウトします');
//セッションを削除　(ログアウトします)
session_destroy();
debug('ログインページへ遷移します');
//ログインページへ
header("Location:login.php");
