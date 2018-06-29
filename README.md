# squid-adblock
Docker image source of squid-adblock

## what's this?
Blocking ads on desktop environment is kind of easy, but what about on phones? More and more apps and sites are optimzing their look&feel (including ads) for smartphones. They breaking the flow of articles, making difficult to read and easy to misclick, not to mention the increased loading time. With this docker image you can setup a proxy at home - so you don't have to worry about your privacy -, configure your phone to use this proxy with your phone and browse and read flawlessly on your phone or tablet.

## usage 
### pre-compiled docker image
If you don't want to change, configure or compile your own version you can deploy the pre-compiled image.

#### example
```docker run -d -p 3128:3128 --name squid-adblock andrassebo/squid-adblock```

### create your own image
In case you wish to modify something, add custom domains or just simply re-compile clone this repo and

```docker build . -t squid-adblock:local```

To start check the example above.

## configure your phone
By default you can access this proxy entering the hosts IP address and 3128 as port.

### Android
- Settings -> Connections -> WiFi
- After a long press on your own WiFi select 'Manage network settings'
- Enter the hosting computer's IP address and 3128 as port

### iOS
- Coming soon
