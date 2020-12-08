import requests
import time
#import java.util.ArrayList as ArrayList
def matchInfo(matchId,api):
    api_key = api
    
    account = ""
    id=""
    level=""
    matchId = matchId
    gameId = ""
    queue = ""
    champion = ""
    redgoldsum = 0
    redkillsum = 0
    bluegoldsum = 0
    bluekillsum = 0
    blueTotalGold = 0
    redTotalGold = 0
    pick = 0
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key

    }
    URL = "https://kr.api.riotgames.com/lol/match/v4/timelines/by-match/"+matchId
    res = requests.get(URL, headers=headers)
    
    data = res.json()
    
    for i in range(0,len(data['frames'])):
        for j in range(0,len(data['frames'][i]['events'])):
            if data['frames'][i]['events'][j]['type'] == 'CHAMPION_KILL':
                print("킬로그")
                print(data['frames'][i]['events'][j]['killerId'])
                print(data['frames'][i]['events'][j]['victimId'])
                print(data['frames'][i]['events'][j]['timestamp']/60000)
            elif data['frames'][i]['events'][j]['type'] == 'BUILDING_KILL':
                print("타워부숨")
                print(data['frames'][i]['events'][j]['killerId'])
                print(data['frames'][i]['events'][j]['timestamp']/60000)
            elif data['frames'][i]['events'][j]['type'] == 'ELITE_MONSTER_KILL':
                if(data['frames'][i]['events'][j]['monsterType'] =='DRAGON'):
                    print("용쳐먹음")
                    print(data['frames'][i]['events'][j]['killerId'])
                    print(data['frames'][i]['events'][j]['monsterSubType'])
                    print(data['frames'][i]['timestamp']/60000)
                elif(data['frames'][i]['events'][j]['monsterType'] == 'RIFTHERALD'):
                    print("전령쳐먹음")
                    print(data['frames'][i]['events'][j]['killerId'])
                    print(data['frames'][i]['timestamp']/60000)
                else:
                    print('바론쳐먹음')
                    print(data['frames'][i]['events'][j]['killerId'])
                    print(data['frames'][i]['timestamp']/60000)
    
    for i in range(0,len(data['frames'])):
        
        for j in range(1,6):
            index = str(j)
            blueTotalGold = blueTotalGold + data['frames'][i]['participantFrames'][index]['totalGold']
        for k in range(6,11):
            index = str(k)
            redTotalGold = redTotalGold + data['frames'][i]['participantFrames'][index]['totalGold']
        print("블루팀 : ",blueTotalGold)
        print("레드팀 : ",redTotalGold)
        blueTotalGold = 0
        redTotalGold = 0
#matchid 넣어주세요. 
matchInfo("4830843430")
