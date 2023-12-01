FROM nodered/node-red
RUN npm install node-red-contrib-ui-led \
    node-red-dashboard \
    node-red-node-ping \
    node-red-node-snmp \
    node-red-contrib-aedes \
    node-red-contrib-mongodb4 \
    node-red-node-email \
    node-red-node-ui-table