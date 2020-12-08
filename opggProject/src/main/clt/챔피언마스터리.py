import requests
import time
#import java.util.ArrayList as ArrayList
def chammastery(inputid, api):
    api_key = api
    
    account = ""
    id=""
    level=""
    inputid = inputid
    headers={
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
        "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
        "Origin": "https://developer.riotgames.com",
        "X-Riot-Token": api_key

    }
    URL = "https://kr.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/"+inputid
    res = requests.get(URL, headers=headers)
    data = res.json()
    for i in range(0,7):
        if(len(data) <= i):
            break
        print("champId : ",data[i]['championId'])
        print("champLevel : ",data[i]['championLevel'])
        print("champPoint : ",data[i]['championPoints'])

# 암호화된 아이디 넣어주세요.
chammastery("ppoJjHjhJlPbtDuNfBIzmiC9J2IvteNFnRVZwPI47J0L5Ro")
