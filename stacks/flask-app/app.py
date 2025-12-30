from flask import Flask, jsonify
import os
import json

app = Flask(__name__)

@app.route('/')
def index():
    return '''
    <h1>Flask + Zabbix Monitoring Dashboard</h1>
    <ul>
        <li><a href="/health">Health Check</a></li>
    </ul>
    '''

@app.route('/health')
def health():
    return jsonify({
        'status': 'healthy',
        'service': 'flask-app',
        'port': os.getenv('PORT', '5000')
    })


@app.route('/api/monitoring/services')
def services_status():
    services = [
        {'name': 'flask-app', 'port': 5000, 'status': 'running'},
        {'name': 'grafana', 'port': 3000, 'url': 'http://localhost:3000'},
        {'name': 'zabbix-web', 'port': 80, 'url': 'http://localhost'},
        {'name': 'zabbix-server', 'port': 10051},
        {'name': 'zabbix-mysql', 'port': 3306}
    ]
    return jsonify(services)

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host='0.0.0.0', port=port, debug=False)