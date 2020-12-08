import requests

api_key = "RGAPI-7b2a320f-3b8c-4939-aa71-3c9a6d027be9"

account = ""
id=""
level=""
name = "냄세제로"
headers={
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
    "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
    "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
    "Origin": "https://developer.riotgames.com",
    "X-Riot-Token": api_key

}
URL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name
res = requests.get(URL, headers=headers)
if res.status_code == 200:
    #코드가 200일때
    data = res.json()
    name = data['name']
    account = data['accountId']
    id = data['id']
    level = data['summonerLevel']
    print(account)
    print(id)
else:
    # 코드가 200이 아닐때(즉 찾는 닉네임이 없을때)
    print("없음")

URL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+id
res = requests.get(URL, headers=headers)
if res.status_code == 200:
    data = res.json()
    #자랭은 data[0] 솔랭은 data[1]
    print(data[0]['tier'])
    print(data[0]['rank'])
    print("점수 :",data[0]['leaguePoints'])
    print("승리 :",data[0]['wins'])
    print("패배 :",data[0]['losses'])
