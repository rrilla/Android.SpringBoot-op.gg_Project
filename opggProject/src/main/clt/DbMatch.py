import sys

sys.path.append('C:\Users\wnstj\AppData\Local\Programs\Python\Python39\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def DbMatch(name,api):
    api_key = api
    accountId = ""
    name = name.decode('cp949').encode('utf-8')
    gameId = ""
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key
    }

    URL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name
    res = requests.get(URL, headers=headers)
    while res.status_code == 429:
        print("rest")
        time.sleep(5)
        URL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name
        res = requests.get(URL, headers=headers)
    data = res.json()
    accountId = data['accountId']
    
    URL = "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+accountId
    res = requests.get(URL, headers=headers)
    data = res.json()
    num = 1
    for i in range(0,len(data['matches'])):
        if num == 21:
            break
        if data['matches'][i]['queue'] == 420:
            gameId = data['matches'][i]['gameId']
            print(gameId)
            URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+str(gameId)
            res = requests.get(URL, headers=headers)
            while res.status_code == 429:
                print("rest")
                time.sleep(5)
                URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+str(gameId)
                res = requests.get(URL, headers=headers)
            data2 = res.json()
            for j in range(0,2):

                for k in range(0,len(data2['teams'][j]['bans'])):
                    print("ban : " ,data2['teams'][j]['bans'][k]['championId'])
                    arr.add(data2['teams'][j]['bans'][k]['championId'])
            if data2['teams'][0]['win'] == "Fail":
                print("loss")
                arr.add("loss")
            else:
                print("win")
                arr.add("win")
            for l in range(0,10):
                arr.add(data2['participants'][l]['championId'])
            num = num + 1
    return arr
#DbMatch("hide on bush","RGAPI-7d1ebbb5-8683-4bb3-9a46-13920cc0510b")
