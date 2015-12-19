# sensu-test-cookbook

Multi Sensu instance cookbook to be run in test-kitchen for evaluation purposes.

## Supported Platforms

 * Ubuntu 14.04

## Usage
The kitchen.yml defines two instances, a server and a client.  Each has its own IP address.  The server dashboard can be reached at 192.168.17.51:3000.

To create the cluster, first configure the server

```
kitchen converge server
```

Then create the client

```
kitchen converge client
```

## License and Authors

Author:: Daniel Klopp (<dsklopp@gmail.com>)
