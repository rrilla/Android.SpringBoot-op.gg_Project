import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def matchInfo(accountId,encId,api):
    api_key = api
    account = ""
    id=""
    encId = encId
    name=""
    level=""
    accountId = accountId
    participantId = 0
    gameId = ""
    queue = ""
    champion = ""
    redgoldsum = 0
    redkillsum = 0
    bluegoldsum = 0
    bluekillsum = 0
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key

    }
    URL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+encId
    res = requests.get(URL, headers=headers)
    data = res.json()
    if data[0]['queueType'] == 'RANKED_SOLO_5x5':
        arr.add('entire')
        for i in range(0,len(data)):
            arr.add(data[i]['tier'])
            arr.add(data[i]['rank'])
            arr.add(data[i]['leaguePoints'])
            arr.add(data[i]['wins'])
            arr.add(data[i]['losses'])
    else:
        arr.add('solo')
        arr.add(data[0]['tier'])
        arr.add(data[0]['rank'])
        arr.add(data[0]['leaguePoints'])
        arr.add(data[0]['wins'])
        arr.add(data[0]['losses'])
    
    URL = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+encId
    res = requests.get(URL, headers=headers)
    data = res.json()
    for i in range(0,7):
        if len(data) <= i:
            break
        print(data[i]['championId'])
        print(data[i]['championPoints'])
        arr.add(data[i]['championId'])
        arr.add(data[i]['championPoints'])
    arr.add("finish")
    URL = "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+accountId
    res = requests.get(URL, headers=headers)
    
    if res.status_code == 200:
        data = res.json()
        for i in range(0,10):
            redgoldsum = 0
            redkillsum = 0
            bluegoldsum = 0
            bluekillsum = 0
            if len(data['matches']) <= i:
                break
            gameId = data['matches'][i]['gameId']
            URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+ str(gameId)
            res = requests.get(URL, headers=headers)

            data2 = res.json()
            # freernak 440 nomal 430 wind 450 solo 420
            if data2['queueId'] == 440:
                queue = 'freernak'
            elif data2['queueId'] == 430:
                queue = 'nomal'
            elif data2['queueId'] == 450:
                queue = 'random'
            else:
                queue = 'solo'
            for i in range(0,len(data2['participantIdentities'])):
                if data2['participantIdentities'][i]['player']['accountId'] == accountId:
                    participantId = data2['participantIdentities'][i]['participantId']
            print(participantId)
            print(queue)
            arr.add(participantId)
            arr.add(queue)

            for i in range(0,10):
                print(data2['participants'][i]['stats']['champLevel'],"level")
                arr.add(data2['participants'][i]['stats']['champLevel'])
                
                print(data2['participants'][i]['championId'],"cham")
                arr.add(data2['participants'][i]['championId'])
                
                print("spell : ",data2['participants'][i]['spell1Id'], data2['participants'][i]['spell2Id'])
                arr.add(data2['participants'][i]['spell1Id'])
                arr.add(data2['participants'][i]['spell2Id'])
                
                print(data2['participantIdentities'][i]['player']['summonerName'])
                arr.add(data2['participantIdentities'][i]['player']['summonerName'])
                
                print(data2['participants'][i]['stats']['kills'],"/",data2['participants'][i]['stats']['deaths'],"/",data2['participants'][i]['stats']['assists'])
                arr.add(data2['participants'][i]['stats']['kills'])
                arr.add(data2['participants'][i]['stats']['deaths'])
                arr.add(data2['participants'][i]['stats']['assists'])
                #print("line : ",data2['participants'][i]['timeline']['lane'])
                
                print("total : " , data2['participants'][i]['stats']['totalDamageDealt'])
                print("champDamage : " , data2['participants'][i]['stats']['totalDamageDealtToChampions'])
                #print("hit : " , data2['participants'][i]['stats']['totalDamageTaken'])

                arr.add(data2['participants'][i]['stats']['totalDamageDealt'])
                arr.add(data2['participants'][i]['stats']['totalDamageDealtToChampions'])
                arr.add(data2['participants'][i]['stats']['totalDamageTaken'])
                print("gold : " , data2['participants'][i]['stats']['goldEarned'])

                arr.add(data2['participants'][i]['stats']['goldEarned'])
                
                print("vision : " , data2['participants'][i]['stats']['visionWardsBoughtInGame'])
                #print(" : " , data2['participants'][i]['stats']['wardsPlaced'])
                #print(" : " , data2['participants'][i]['stats']['wardsKilled'])

                arr.add(data2['participants'][i]['stats']['visionWardsBoughtInGame'])
                #summeronInfo['wardplace'] = data2['participants'][i]['stats']['wardsPlaced']
                #summeronInfo['wardkill'] = data2['participants'][i]['stats']['wardsKilled']
                
                print("cs : " , data2['participants'][i]['stats']['totalMinionsKilled']+data2['participants'][i]['stats']['neutralMinionsKilled'])

                arr.add(data2['participants'][i]['stats']['totalMinionsKilled']+data2['participants'][i]['stats']['neutralMinionsKilled'])
                
                if i<=4:
                    bluegoldsum = bluegoldsum + data2['participants'][i]['stats']['goldEarned']
                    bluekillsum = bluekillsum + data2['participants'][i]['stats']['kills']
                else:
                    redgoldsum = redgoldsum + data2['participants'][i]['stats']['goldEarned']
                    redkillsum = redkillsum + data2['participants'][i]['stats']['kills']

                for j in range(0,7):
                    print("item :" , data2['participants'][i]['stats']['item'+str(j)])
                    arr.add(data2['participants'][i]['stats']['item'+str(j)])
                arr.add(data2['participants'][i]['stats']['perk0'])
            
            print("result : ", data2['teams'][0]['win'])
            print("tower : ",data2['teams'][0]['towerKills'])
            print("baron : ",data2['teams'][0]['baronKills'])
            print("dragoe : ",data2['teams'][0]['dragonKills'])
            arr.add(data2['teams'][0]['win'])
            arr.add(data2['teams'][0]['towerKills'])
            arr.add(data2['teams'][0]['baronKills'])
            arr.add(data2['teams'][0]['dragonKills'])            

            print("blueKill : " , bluekillsum)
            print("blueGold : " , bluegoldsum)

            arr.add(bluekillsum)
            arr.add(bluegoldsum)
            
            print("tower : ",data2['teams'][1]['win'])
            print("tower : ",data2['teams'][1]['towerKills'])
            print("baron : ",data2['teams'][1]['baronKills'])
            print("dragon : ",data2['teams'][1]['dragonKills'])

            arr.add(data2['teams'][1]['win'])
            arr.add(data2['teams'][1]['towerKills'])
            arr.add(data2['teams'][1]['baronKills'])
            arr.add(data2['teams'][1]['dragonKills'])

            print("redkill : " , redkillsum)
            print("redgold : " , redgoldsum)
            arr.add(redkillsum)
            arr.add(redgoldsum)

    else:
        print("no data")


    return arr
