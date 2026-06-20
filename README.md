<!--
 here is a basic multiline comment for formatting reference o7
-->

<!--
<p align="center">
  <img src="/md-assets/image.png"
   style="width: 100%; height: 25%">
</p>

![Image Name](/md-assets/image.png)

-->

<h1 align="center">Pywal Glance Theme</h1>

<p align="center">
  Pywal theme for Glance. (the self-hosted server dashboard)<br>
  All code is licensed under the <a href="LICENSE">Unlicense License</a>. (do whatever u want idc)
</p>

> Preview w/ blur
![Pywal Glance Preview](md-assets/pywal-glance-preview.gif)

> Preview w/o blur
![Opaque Pywal Glance Preview](md-assets/pywal-glance-preview-opaque.gif)


## Repository Structure
```
pywal-glance-theme/
├── md-assets/ ----------------------------- Images and other markdown/README assets
|  ├── pywal-glance-preview.gif ------------ Preview w/ blur
|  └── pywal-glance-preview-opaque.gif ----- Preview w/o blur
├── install.sh ----------------------------- Install script for pywal-to-glance.sh
├── LICENSE -------------------------------- License for the repo
└── README.md ------------------------------ Main README for the repo
```

## Installation
There are two methods for installing this script;
> - cURL and run the install script (which automatates the following option)
> 
*OR:*

> - cURL the source script from my bash-scripts repository, and make it executable

Either method is viable, and the choice is a matter of preference.

Lets begin with the first method:

### Method 1: (Easy, but unseen work)
```
curl -fsSL https://raw.githubusercontent.com/0lswitcher/pywal-glance-theme/refs/heads/main/install.sh | bash
```

### Method 2: (More involved)
Download the script:
```
curl -sLO https://raw.githubusercontent.com/0lswitcher/bash-scripts/refs/heads/main/scripts/pywal-glance-theme.sh
```
Then, make it executable:
```
chmod +x ./pywal-glance-theme.sh
```
That's it! \
Now, you can move it to another directory of your choosing:
```
mv ./pywal-glance-theme.sh /usr/local/bin/
```
> Feel free to replace `/usr/local/bin/` with whatever you prefer.

## Usage
Usage is simple, and I've written the script to be compatable with as many distro's and WM's possible. \
The only configuration required before running the script is to update the `$GLANCE_CONFIG` variable with your
correct `glance.yml` path (likely pointing to a docker container, or `/opt/glance/`)

In my case; \
`pywal-to-glance.sh`
```bash
GLANCE_CONFIG="/mnt/smith/docker/komodo/stacks-data/glance/configdir/glance.yml"
```

And that's it! \
From here, the script can be ran with:
```
bash /path/to/pywal-to-glance.sh
```
> Make sure to replace `/path/to/` with the correct path to your script location.

And upon running, it will convert your pywal colors from hexadecimal to hsl, write your `glance.yml` with an updated 
pywal color block, and attempt to refresh your web browser to show the new changes. 

> [!IMPORTANT]
> If your server is hosted on a headless machine that you SSH into like me, you'll need to have the filsystem mounted
with `SSHFS` instead of temporarily accessing w/ `SFTP` so that the script can read your `glance.yml` file. 

> [!IMPORTANT]
> **Are you a Hyprland user?** *If so, you're in luck!* \
> Refreshing is even more seamless for you, though it requires a bit more configuration.
> 
> Please update the `title:^(.*YOUR_WINDOW_NAME.*)$` section with the name found under the title section of your browser window determined with `hyprctl clients`. It will likely be the name of your main/first page on your dashboard. \
> In my case, I put `title:^(.*NeoDash.*)$`.
> > *The extra wrapper symbols ( `^(.*  .*)$` ) are for recognizing the title through unrecognizable characters like emojis.*

> [!TIP]
> For x11 systems, `xdotool` is used for refreshing the browser window to prevent the need for manual refreshing.
> 
> This event takes place whether or not your browser has glance open, \
> so if you find your browser refreshing even
> when Glance isn't the active tab, you may want to write your own detection system.
> 
> My own demonstrated at the end of the script should help to work as a base if you're unsure of how to do so.
> Also consider browser extensions for auto reloading, and especially distro and WM specific solutions.

## License
This repository is licensed under the [Unlicense License](LICENSE). (do whatever u want idc)

## Contributing
1. Fork the repo  
2. Create a branch for your feature/fix  
3. Submit a pull request  

---

<p align="center">
  <sub>made with ❤️ by 0lswitcher</sub>
</p>
