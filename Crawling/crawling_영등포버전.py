import requests
from bs4 import BeautifulSoup
import time

for page in range(33, 44):
  url = f'https://www.ydp.go.kr/www/selectBbsNttList.do?bbsNo=31&&pageUnit=10&key=2814&pageIndex={page}'
  resp =requests.get(url)

  print("영등포구" in resp.text)

  soup = BeautifulSoup(resp.text, 'html5lib')
  sel = "#board > div > div > table > tbody > tr > td.p-subject > a"
  titles = soup.select(sel)
  for tag in titles:
    sub_url = "https://www.ydp.go.kr/www" + tag['href'][1:]
    resp = requests.get(sub_url)
    soup = BeautifulSoup(resp.text, 'html5lib')

    sel = "#board > div > div > table > tbody > tr:nth-child(3) > td > ul > li > a.p-attach__link"
    name = "#board > div > div > table > tbody > tr:nth-child(3) > td > ul > li > a.p-attach__link > span:nth-child(2)"
    links = soup.select(sel)
    fname = soup.select_one(name).text.strip()
    for item in links:
      print(item.text.strip())
      file_url = "https://www.ydp.go.kr/www/" + item['href'][0:]
      
      print(file_url) 
      resp = requests.get(file_url)
      with open(fname, "wb") as f:
        f.write(resp.content) 

    time.sleep(1)
  

