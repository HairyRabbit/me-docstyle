# get code
code_path="https://graph.qq.com/oauth2.0/authorize"
###
console.log [ "response_type=code"
        , "client_id=101015312"
        , "redirect_uri=#{encodeURIComponent 'http://localhost'}"
        , "state=test"
        ].join "&"
###
#
#https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id=101015312&redirect_uri=http%3A%2F%2Fwww.yufi.me&state=test
#
# code=D8BCAC09EABE2B451588D65DB462A1A9
#

# get token
token_path="https://graph.qq.com/oauth2.0/token"

###
console.log ["grant_type=authorization_code"
        , "client_id=101015312"
        , "client_secret=d6cb9b0117b6cbfab4711daafe2ec4ff"
        , "code=D8BCAC09EABE2B451588D65DB462A1A9"
        , "redirect_uri=#{encodeURIComponent 'http://localhost'}"
        ].join "&"
###        

# access_token=1C113F993D0271ECA68B44BC08542676&expires_in=7776000&refresh_token=F914B7204F9713F09D48976C01193D1D
#

# get OpenID
path_openid="https://graph.qq.com/oauth2.0/me"
"access_token=1C113F993D0271ECA68B44BC08542676"

# callback(
# {"client_id":"101015312","openid":"03000CB998E4938C0635363B1A7310FC"}
# );

# get UserInfo
path_info="https://graph.qq.com/user/get_user_info"

###
console.log ["access_token=1C113F993D0271ECA68B44BC08542676"
        , "openid=03000CB998E4938C0635363B1A7310FC"
        , "oauth_consumer_key=101015312"
        ].join "&"
###        

# "access_token=1C113F993D0271ECA68B44BC08542676&openid=03000CB998E4938C0635363B1A7310FC&oauth_consumer_key=101015312"
###
{
  'ret': 0,
  'msg': '',
  'is_lost': 0,
  'nickname': 'ÇëÎñ±ØÀ´µã?ÍÃ×Ó??',
  'gender': 'Å®',
  'province': '',
  'city': '',
  'year': '2015',
  'figureurl': 'http://qzapp.qlogo.cn/qzapp/101015312/03000CB998E4938C0635363B1A7310FC/30',
  'figureurl_1': 'http://qzapp.qlogo.cn/qzapp/101015312/03000CB998E4938C0635363B1A7310FC/50',
  'figureurl_2': 'http://qzapp.qlogo.cn/qzapp/101015312/03000CB998E4938C0635363B1A7310FC/100',
  'figureurl_qq_1': 'http://q.qlogo.cn/qqapp/101015312/03000CB998E4938C0635363B1A7310FC/40',
  'figureurl_qq_2': 'http://q.qlogo.cn/qqapp/101015312/03000CB998E4938C0635363B1A7310FC/100',
  'is_yellow_vip': '0',
  'vip': '0',
  'yellow_vip_level': '0',
  'level': '0',
  'is_yellow_year_vip': '0'
}

###
