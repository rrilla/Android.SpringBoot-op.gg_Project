import requests
import time
#import java.util.ArrayList as ArrayList
def matchInfo(accountId,api):
    api_key = api
    
    account = ""
    id=""
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
    URL = "https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/"+accountId
    res = requests.get(URL, headers=headers)
    
    if res.status_code == 200:
        data = res.json()
        for i in range(0,1):
            if len(data['matches']) <= i:
                break
            gameId = data['matches'][i]['gameId']
            URL = "https://kr.api.riotgames.com/lol/match/v4/matches/"+ str(gameId)
            res = requests.get(URL, headers=headers)

            data2 = res.json()
            
            # 자랭 440 일반 430 칼바람 450 솔랭 420
            if data2['queueId'] == 440:
                queue = '자유 5:5 랭크'
            elif data2['queueId'] == 430:
                queue = '일반'
            elif data2['queueId'] == 450:
                queue = '무작위 총력전'
            else:
                queue = '솔랭'
                
            for i in range(0,len(data2['participantIdentities'])):
                if data2['participantIdentities'][i]['player']['accountId'] == accountId:
                    participantId = data2['participantIdentities'][i]['participantId']
            print(participantId)
            print(queue)
            
            print('gameId : ' , gameId)
            print("------블루팀------")
            print("타워 : ",data2['teams'][0]['towerKills'])
            print("바론 : ",data2['teams'][0]['baronKills'])
            print("드래곤 : ",data2['teams'][0]['dragonKills'])
            print("")
            print("")
            
            for i in range(0,5):
                print(data2['participantIdentities'][i]['player']['summonerName'])
                print(data2['participants'][i]['stats']['kills'],"/",data2['participants'][i]['stats']['deaths'],"/",data2['participants'][i]['stats']['assists'])
                print("라인 : ",data2['participants'][i]['timeline']['lane'])
                print("스펠 : ",data2['participants'][i]['spell1Id'], data2['participants'][i]['spell2Id'])
                print("총데미지 : " , data2['participants'][i]['stats']['totalDamageDealt'])
                print("챔피언데미지 : " , data2['participants'][i]['stats']['totalDamageDealtToChampions'])
                print("받은피해 : " , data2['participants'][i]['stats']['totalDamageTaken'])
                print("cs : " , data2['participants'][i]['stats']['totalMinionsKilled']+data2['participants'][i]['stats']['neutralMinionsKilled'])
                print("골드 획득량 : " , data2['participants'][i]['stats']['goldEarned'])
                print("와드설치 : " , data2['participants'][i]['stats']['wardsPlaced'])
                bluegoldsum = bluegoldsum + data2['participants'][i]['stats']['goldEarned']
                bluekillsum = bluekillsum + data2['participants'][i]['stats']['kills']
                        

                for j in range(0,7):
                    print("아이템(칸별로) :" , data2['participants'][i]['stats']['item'+str(j)])

                for k in range(0,6):
                    print("룬(차례대로) : ", data2['participants'][i]['stats']['perk'+str(k)])
                    
                print("")
                print("")

            print("블루팀 총 킬 : " , bluekillsum)
            print("블루침 골드 : " , bluegoldsum)
                

            print("------레드팀------")
            print("타워 : ",data2['teams'][1]['towerKills'])
            print("바론 : ",data2['teams'][1]['baronKills'])
            print("드래곤 : ",data2['teams'][1]['dragonKills'])

            print("")
            print("")
            print("")

            for i in range(5,10):
                print(data2['participantIdentities'][i]['player']['summonerName'])
                print(data2['participants'][i]['stats']['kills'],"/",data2['participants'][i]['stats']['deaths'],"/",data2['participants'][i]['stats']['assists'])
                print("레벨 : ", data2['participants'][i]['stats']['champLevel'])
                print("라인 : ",data2['participants'][i]['timeline']['lane'])
                print("스펠 : ",data2['participants'][i]['spell1Id'], data2['participants'][i]['spell2Id'])
                print("총데미지 : " , data2['participants'][i]['stats']['totalDamageDealt'])
                print("챔피언데미지 : " , data2['participants'][i]['stats']['totalDamageDealtToChampions'])
                print("받은피해 : " , data2['participants'][i]['stats']['totalDamageTaken'])
                print("cs : " , data2['participants'][i]['stats']['totalMinionsKilled']+data2['participants'][i]['stats']['neutralMinionsKilled'])
                print("골드 획득량 : " , data2['participants'][i]['stats']['goldEarned'])
                print("제어와드 : " , data2['participants'][i]['stats']['visionWardsBoughtInGame'])
                print("와드 설치 : " , data2['participants'][i]['stats']['wardsPlaced'])
                print("와드 제거 : " , data2['participants'][i]['stats']['wardsKilled'])
                redgoldsum = redgoldsum + data2['participants'][i]['stats']['goldEarned']
                redkillsum = redkillsum + data2['participants'][i]['stats']['kills']           
                for j in range(0,7):
                    print("아이템(칸별로) :" , data2['participants'][i]['stats']['item'+str(j)])
                for k in range(0,6):
                    print("룬(차례대로) : ", data2['participants'][i]['stats']['perk'+str(k)])
                
                print("")
                print("")

            
            print("레드팀 총 킬 : " , redkillsum)
            print("레드팀 골드 : " , redgoldsum)    
            print("-----------------------------------")
            print("")
            print("")

    else:
        print("data가 없습니다")

    
#accountId 넣어주세요. 
matchInfo("JT6leNtKT9rcEXgzS7PR4SV_FO8NDIFWV_OEP2aksJ-OGmo")
