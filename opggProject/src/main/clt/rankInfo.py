import sys
sys.path.append('C:\ProgramData\Anaconda3\Lib\site-packages')
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def rank(api):
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
        data = res.json()
        if res.status_code == 429:
            print("rest")
            time.sleep(80)
            continue
        if len(data)==0:
            if tier == "CHALLENGER":
                tier = "GRANDMASTER"
                i = 1
                continue
            elif tier == "GRANDMASTER":
                tier = "MASTER"
                i = 1
                continue
            elif tier == "MASTER":
                break
        j=0
        while True:
            if len(data) <= j:
                break
            
            URL2 = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+data[j]['summonerName']
            res2 = requests.get(URL2, headers=headers)

            while res2.status_code == 429:
                URL2 = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+data[j]['summonerName']
                res2 = requests.get(URL2, headers=headers)
            data2 = res2.json()
            if res2.status_code == 404:
                j=j+1
                continue
            print("tnsdnl : " , rank , "summonerName :" + data[j]['summonerName'] + " tier : " + data[j]['tier'] , data[j]['leaguePoints'] , "wins : " ,data[j]['wins'] , " losses : " ,data[j]['losses'])
            print(data2['summonerLevel'])
            arr.add(data[j]['summonerName'])
            arr.add(data[j]['tier'])
            arr.add(data[j]['leaguePoints'])
            arr.add(data[j]['wins'])
            arr.add(data[j]['losses'])
            arr.add(data2['summonerLevel'])
            j = j+1
            rank = rank+1
        i=i+1
    return arr