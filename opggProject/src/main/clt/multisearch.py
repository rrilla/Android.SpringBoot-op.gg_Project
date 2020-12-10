
import requests
import time

def multiSearch(inputname,api):
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
    
        data = res.json()
        name = data['name']
        account = data['accountId']
        id = data['id']
        level = data['summonerLevel']
        print(account)
        print(id)
        print(name)
    else:
        
        print("none")


    gameId = ""
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
        else :            
            print(data[1]['tier'])
            print(data[1]['rank'])
            print("point : ",data[1]['leaguePoints'])
            print("win :",data[1]['wins'],"win")
            print("loss :",data[1]['losses'],"loss")
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
                if data2['participantIdentities'][i]['player']['summonerName'] == 'ZED99':
                    participantId = i
                    
            print("ID:",data2['participants'][participantId]['championId'])
            print("kill:",data2['participants'][participantId]['stats']['kills'])
            print("death",data2['participants'][participantId]['stats']['deaths'])
            print("ass",data2['participants'][participantId]['stats']['assists']) 
            issue = "win" if data2['participants'][participantId]['stats']['win'] else "loss"
            print(issue)

multiSearch("냄세제로","RGAPI-be18fde6-086f-458b-b3b1-a1eda49a519c")