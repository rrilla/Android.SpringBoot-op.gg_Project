import sys
sys.path.append('C:\Users\wnstj\AppData\Local\Programs\Python\Python39\Lib\site-packages')
sys.setdefaultencoding("utf-8")
import requests
import time
import java.util.ArrayList as ArrayList
import java.util.List

arr = ArrayList()
def champion(name,api):
    api_key = api
    name = name
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
    URL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name
    res = requests.get(URL, headers=headers)
    if res.status_code == 200:

        data = res.json()
        id = data['id']
    else:
        print("no")


    URL = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+id
    res = requests.get(URL, headers=headers)
    if res.status_code == 429:
        print("rest")
        time.sleep(30)
    cham = res.json()
    for k in range(0,5):
        if len(cham) <= k:
            break
        print("championId : ",cham[k]['championId'], "championPoints : ",cham[k]['championPoints'])
        arr.add(str(cham[k]['championId']))
        arr.add(str(cham[k]['championPoints']))

    return arr
