from flask import Flask, request, jsonify
import logging

app = Flask(__name__)


@app.route('/')
def echo():
    ip_address = request.remote_addr
    user_agent = request.user_agent.string
    host = request.host
    accept = request.accept_mimetypes.best

    response = jsonify({
        'Client IP': ip_address,
        'Host': host,
        'User-Agent': user_agent,
        'Accept': accept
    })

    return response, 200


if __name__ == '__main__':
    logging.basicConfig(filename='logs/access.log', level=logging.DEBUG)

    app.run(debug=True, host='0.0.0.0', port=80)
