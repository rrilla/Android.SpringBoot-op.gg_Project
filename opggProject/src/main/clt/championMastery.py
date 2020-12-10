import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def champion(api):
    api_key = api

    account = ""
    id=""
    level=""
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key
    }
    rank = 1
    page = 1
    sum = 0
    i = 1
    tier = "CHALLENGER"
    while True:
        URL = "https://kr.api.riotgames.com/lol/league-exp/v4/entries/RANKED_SOLO_5x5/"+tier+"/I?page="+str(i)
        res = requests.get(URL, headers=headers)
        while res.status_code == 429:
            print("rest")
            time.sleep(30)
            URL = "https://kr.api.riotgames.com/lol/league-exp/v4/entries/RANKED_SOLO_5x5/"+tier+"/I?page="+str(i)
            res = requests.get(URL, headers=headers)
        data = res.json()
        if len(data) == 0:
            break
        for j in range(0,len(data)):
            print(data[j]['summonerName'])
            arr.add(data[j]['summonerName'])
            id = data[j]['summonerId']
            URL2 = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+id
            res2 = requests.get(URL2, headers=headers)
            while res2.status_code == 429:
                print("rest")
                time.sleep(30)
                URL2 = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+id
                res2 = requests.get(URL2, headers=headers)
            if res2.status_code == 404:
                continue
            data2 = res2.json()
            arr.add("champion")
            for k in range(0,5):
                if len(data2) <= k:
                    break
                print(k+1,"championMastery")
                print(data2[k]['championId'])
                print(data2[k]['championPoints'])
                arr.add(data2[k]['championId'])
                arr.add(data2[k]['championPoints'])
        i=i+1
    return arr    