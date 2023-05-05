# screen-capture
Lightweight, no-install screen capture tool based on Docker

```bash
sudo docker run --rm -p 8080:8080 ghcr.io/bensofficial/screen-capture
```

Then open http://localhost:8080 in your browser. Stop the Docker container to delete all temporary files.

⚠ Please use this only in your own network. All recordings are accessible via the web server that was started to convert the videos. ⚠

## Credits

Based on:
- [manan657/jsScreenRecorder](https://github.com/manan657/jsScreenRecorder/tree/103acc1d193e3d6d5e0517be317800a3a7febf40)
- [erseco/alpine-php-webserver](https://github.com/erseco/alpine-php-webserver/tree/da0d4738234cbd00a7ad94e768daee43235ffc20)
