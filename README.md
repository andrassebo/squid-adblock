# squid-adblock
Docker image source of squid-adblock

## what's this?
Blocking ads on desktop environment is kind of easy, but what about on phones? More and more apps and sites prevents people to enjoy the content and force you to see unrelevant ads. They are breaking the flow of articles, making difficult to read and easy to misclick, not to mention the increased loading time. With this docker image you can setup a proxy at home - so you don't have to worry about your privacy. All you have to do is configure this proxy on your phone / tablet and start browsing flawlessly on your device.

## usage 
### pre-compiled docker images
If you don't want to change, configure or compile your own version, you can deploy the pre-compiled image.

#### example
```./start-squid.sh```

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
