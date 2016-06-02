## get code
#

path_code = "https://github.com/login/oauth/authorize"
console.log [ "client_id=feebf3fa280163233841"
, "redirect_uri=#{ encodeURIComponent 'http://www.yufi.me' }"
, "scope=user"
, "state=test"
].join "&"

#https://github.com/login/oauth/authorize?client_id=feebf3fa280163233841&redirect_uri=http%3A%2F%2Fwww.yufi.me&scope=user&state=test

#code=ad26b285b8a8eb56a39f&state=test

# get token

console.log "\n"

path_token = "https://github.com/login/oauth/access_token"

console.log [ "client_id=feebf3fa280163233841"
        , "client_secret=59934d670b0374eecd8e9364726774e3de8dedcf"
        , "redirect_uri=#{ encodeURIComponent 'http://www.yufi.me' }"
        , "code=ad26b285b8a8eb56a39f"
        , "state=test"
        ].join "&"

# https://github.com/login/oauth/access_token?client_id=feebf3fa280163233841&client_secret=59934d670b0374eecd8e9364726774e3de8dedcf&redirect_uri=http%3A%2F%2Fwww.yufi.me&code=ad26b285b8a8eb56a39f&state=test

# access_token=7264151bfebfba560655ccc8b40b7029aca6aa64
# scope=user
# token_type=bearer

# curl -H "Authorization: token 7264151bfebfba560655ccc8b40b7029aca6aa64" https://api.github.com/user

###
{
  'login': 'yuffiy',
  'id': 5752902,
  'avatar_url': 'https://avatars.githubusercontent.com/u/5752902?v=3',
  'gravatar_id': '',
  'url': 'https://api.github.com/users/yuffiy',
  'html_url': 'https://github.com/yuffiy',
  'followers_url': 'https://api.github.com/users/yuffiy/followers',
  'following_url': 'https://api.github.com/users/yuffiy/following{/other_user}',
  'gists_url': 'https://api.github.com/users/yuffiy/gists{/gist_id}',
  'starred_url': 'https://api.github.com/users/yuffiy/starred{/owner}{/repo}',
  'subscriptions_url': 'https://api.github.com/users/yuffiy/subscriptions',
  'organizations_url': 'https://api.github.com/users/yuffiy/orgs',
  'repos_url': 'https://api.github.com/users/yuffiy/repos',
  'events_url': 'https://api.github.com/users/yuffiy/events{/privacy}',
  'received_events_url': 'https://api.github.com/users/yuffiy/received_events',
  'type': 'User',
  'site_admin': false,
  'name': 'Rabbit',
  'company': null,
  'blog': 'http://www.yufi.me',
  'location': null,
  'email': 'yfhj1990@hotmail.com',
  'hireable': true,
  'bio': 'TL;DW short for => 不如D',
  'public_repos': 49,
  'public_gists': 2,
  'followers': 40,
  'following': 50,
  'created_at': '2013-10-23T04:05:07Z',
  'updated_at': '2016-06-02T05:34:27Z',
  'private_gists': 1,
  'total_private_repos': 0,
  'owned_private_repos': 0,
  'disk_usage': 31501,
  'collaborators': 0,
  'plan': {
    'name': 'free',
    'space': 976562499,
    'collaborators': 0,
    'private_repos': 0
  }
}
###
