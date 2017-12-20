# MIUI8 PatchROM for YUREKA (VoLTE)

This is the Git repo of MIUI 8 patchROM for tomato (Yureka) developed by nitesh9 (@nitesh-prasad)

![image](https://2.bp.blogspot.com/-Ersls9JVw_Y/V20effHLbVI/AAAAAAAABKY/bGVYqpOpAusmdvbvCCDAG-rpGbLF2TJpQCLcB/s1600/MIUI-8-Logo.jpg)

Getting Android SDK
------------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.
Open Terminal, type this:

gedit ~/.bashrc

add this line in top:

export PATH=${PATH}:/home/xxx/android-sdk-linux/tools
export PATH=${PATH}:/home/xxx/android-sdk-linux/platform-tools

Getting Started
---------------

To get started with MiCode/patchrom, you'll need to get familiar with Git and Repo.
To get started with MiCode/patchrom, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the patchrom trees, use a command like this:

$ mkdir patchrom

$ cd patchrom

$ repo init -u git://github.com/MiCode/patchrom.git -b marshmallow

Then to sync up:

$ repo sync

$ git clone https://github.com/nitesh-prasad/patchrom_tomato_volte.git tomato

Build
--------

$ . build/envsetup.sh && cd tomato

$ make fullota

Credits
-------

Special thanks to @princepaul, @DROHAN898 and @a136fei for helping me in this project.

