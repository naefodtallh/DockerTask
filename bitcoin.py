# Get the current price of Bitcoin in USD using the coindesk.com API with Python and the Requests HTTP library
from flask import Flask
import requests 
app = Flask(__name__)

@app.route('/')
@app.route('/bitcoin')
def bitcoin():
btc = requests.get('https://api.coindesk.com/v1/bpi/currentprice.json')
print(btc.json()['bpi']['USD']['rate'])        #print(btc.status_code)
                                               #print(btc.headers['content-type'])
                                               #print(btc.encoding)
                                               #print(btc.text)

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
