import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def myInfo(accountId,encId,api):
    
    accountId = accountId
    api_key = api
    encId = encId
    
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
        print('solo')
        print(data[0]['tier'])
        print(data[0]['rank'])
        print(data[0]['leaguePoints'])
        arr.add(data[0]['tier'])
        arr.add(data[0]['rank'])
        arr.add(data[0]['leaguePoints'])
        
    elif data[0]['queueType'] == 'RANKED_FLEX_SR':
        if 2<=len(data):
            print(data[1]['tier'])
            print(data[1]['rank'])
            print(data[1]['leaguePoints'])
            arr.add(data[1]['tier'])
            arr.add(data[1]['rank'])
            arr.add(data[1]['leaguePoints'])
            
        else :
            arr.add('free')
            for i in range(0,len(data)):
                print(data[0]['tier'])
                print(data[0]['rank'])
                print(data[0]['leaguePoints'])
                arr.add(data[0]['tier'])
                arr.add(data[0]['rank'])
                arr.add(data[0]['leaguePoints'])
    
    URL = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+encId
    res = requests.get(URL, headers=headers)
    data = res.json()
    for i in range(0,3):
        if len(data)<=i:
            break
        print(data[i]['championId'])
        print(data[i]['championPoints'])
        arr.add(data[i]['championId'])
        arr.add(data[i]['championPoints'])
    return arr