# PowerStatusControl

**PowerStatusControl** is a small widget that allows you to control your system power state by preventing it from automatically **falling asleep**, **dimming the display**, and even stopping your downloads when you press the Sleep button on your PC (the computer goes to **Awaymode** instead of going to sleep).

![Main and the only one window](https://user-images.githubusercontent.com/30962924/39965715-ead324cc-56a6-11e8-9057-9223b1078353.png)

You may know some programs that perform sleep-sensitive operations that, however, do not prevent the computer from sleep like the most of media players do (but not all of them!). Or, for example, I know a defragmentation tool that might *lose your data* if the computer accidentally goes to sleep! If you want to automatically enter the correct power mode for such programs you may want to use my another utility that is called [Execution Master](https://github.com/diversenok/ExecutionMaster). At the same time, if you want to do it manually you should use **PowerStatusControl**.

Another cool feature here is called **Awaymode**. I was annoyed when I accidentally pressed Sleep button while I had been downloading a huge file over a slow internet connection for a couple of hours and Chromium canceled the downloading. So I wrote this program and included this feature in it. How it works: **Awaymode** is originally designed for media recording software so that it can perform background actions while the computer *appears to sleep*. When any program requests this mode nothing actually happens until the user presses the Sleep button. When it happens the computer doesn't actually enter sleep mode. Instead of this it just turns off the display and the audio. So your web browser and other software will work fine even when the computer appears to be sleeping.

## Downloads

See [releases](https://github.com/diversenok/PowerStatusControl/releases) page.

This program should work fine starting from Windows Vista.

Key        | Value
---------- | -----
Author     | © diversenok
Email      | diversenok@gmail.com (English and Russian are suitable)
Compiled   | Delphi XE8
Version    | 0.5.12.0
Date       | May 12, 2018

------------------------------------------------------------------------------

    Copyright (C) 2018 diversenok

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.	