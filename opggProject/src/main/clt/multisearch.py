import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def multiSearch(api,accountId,encId):
    api_key = api
    account = accountId
    id= encId
    level=""
    name = ""
    gameId = ""
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key

    }

    URL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+id
    res = requests.get(URL, headers=headers)
    if res.status_code == 200:
        data = res.json()
        
        if len(data) <= 1 :
            print(data[0]['tier'])
            print(data[0]['rank'])
            print("point : ",data[0]['leaguePoints'])
            print("win :",data[0]['wins'],"win")
            print("loss :",data[0]['losses'],"loss")
            arr.add(data[0]['tier'])
            arr.add(data[0]['rank'])
            arr.add(data[0]['leaguePoints'])
            arr.add(data[0]['wins'])
            arr.add(data[0]['losses'])
        else :            
            print(data[1]['tier'])
            print(data[1]['rank'])
            print("point : ",data[1]['leaguePoints'])
            print("win :",data[1]['wins'],"win")
            print("loss :",data[1]['losses'],"loss")
            arr.add(data[1]['tier'])
            arr.add(data[1]['rank'])
            arr.add(data[1]['leaguePoints'])
            arr.add(data[1]['wins'])
            arr.add(data[1]['losses'])
        URL = "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+account
        res = requests.get(URL, headers=headers)
        data = res.json()
        for i in range(0, len(data['matches'])):
            if(i>=11):
                break
            if(data['matches'][i]['queue'] != 420):
                continue
            URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+str(data['matches'][i]['gameId'])
            res = requests.get(URL, headers=headers)
            data2 = res.json()
            participantId = 0
            for i in range(0,len(data2['participantIdentities'])):
                if data2['participantIdentities'][i]['player']['accountId'] == account:
                    participantId = i
                    
            print("ID:",data2['participants'][participantId]['championId'])
            print("kill:",data2['participants'][participantId]['stats']['kills'])
            print("death",data2['participants'][participantId]['stats']['deaths'])
            print("ass",data2['participants'][participantId]['stats']['assists']) 
            issue = "win" if data2['participants'][participantId]['stats']['win'] else "loss"
            print(issue)
            arr.add(data2['participants'][participantId]['championId'])
            arr.add(data2['participants'][participantId]['stats']['kills'])
            arr.add(data2['participants'][participantId]['stats']['deaths'])
            arr.add(data2['participants'][participantId]['stats']['assists'])
            arr.add(issue)
    return arr