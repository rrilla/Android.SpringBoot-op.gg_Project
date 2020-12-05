import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList

arr = ArrayList()
def multiSearch(inputname):
    api_key = "RGAPI-e20900cf-8210-48df-8623-06f987904501"

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
        data = res.json()
        name = data['name']
        account = data['accountId']
        id = data['id']
        level = data['summonerLevel']
        print(account)
        print(id)
        arr.add(name)
        arr.add(level)
    else:
        print("No")


    gameId = ""
    URL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+id
    res = requests.get(URL, headers=headers)
    if res.status_code == 200:
        data = res.json()
        arr.add(data[0]['tier'])
        arr.add(data[0]['rank'])
        arr.add(data[0]['leaguePoints'])
        arr.add(data[0]['wins'])
        arr.add(data[0]['losses'])
        URL = "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+account
        res = requests.get(URL, headers=headers)
        data = res.json()
        for i in range(0, len(data['matches'])):
            print(i)
            if(i>=10):
                break
            if(data['matches'][i]['queue'] != 420):
                continue
            URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+str(data['matches'][i]['gameId'])
            res = requests.get(URL, headers=headers)
            data2 = res.json()
            participantId = 0
            for i in range(0,len(data2['participantIdentities'])):
                if data2['participantIdentities'][i]['player']['summonerName'] == 'ZED99':
                    participantId = i
            
            arr.add(data2['participants'][participantId]['championId'])
            arr.add(data2['participants'][participantId]['stats']['kills'])
            arr.add(data2['participants'][participantId]['stats']['deaths'])
            arr.add(data2['participants'][participantId]['stats']['assists'])
        return arr
    