import requests
import time
#import java.util.ArrayList as ArrayList
def solorank(inputname,api):
    api_key = api
    
    account = ""
    id=""
    level=""
    name = inputname
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
        print(name)
    else:
        # 코드가 200이 아닐때(즉 찾는 닉네임이 없을때)
        print("없음")


    gameId = ""
    URL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+id
    res = requests.get(URL, headers=headers)
    if res.status_code == 200:
        data = res.json()
        #자랭은 data[1] 자랭은 data[0] 자랭데이터 없으면 솔랭이 data[0]
        if len(data) <= 1 :
            print('-----솔로랭크-----')
            print(data[0]['tier'])
            print(data[0]['rank'])
            print("리그 포인트 : ",data[0]['leaguePoints'])
            print("승리 :",data[0]['wins'],"승")
            print("패배 :",data[0]['losses'],"패")
        else :   
            print('-----솔로랭크-----')         
            print(data[1]['tier'])
            print(data[1]['rank'])
            print("리그 포인트 : ",data[1]['leaguePoints'])
            print("승리 :",data[1]['wins'],"승")
            print("패배 :",data[1]['losses'],"패")
            print('-----자유랭크-----')
            print(data[0]['tier'])
            print(data[0]['rank'])
            print("리그 포인트 : ",data[0]['leaguePoints'])
            print("승리 :",data[0]['wins'],"승")
            print("패배 :",data[0]['losses'],"패")

    
solorank("냄세제로")
